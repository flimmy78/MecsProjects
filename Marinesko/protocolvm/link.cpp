#include "link.h"

#ifdef _WIN32
	#include <winsock2.h>	
#else
	#include <sys/socket.h>
	#include <sys/un.h>
	#include <termios.h>
	#include <netinet/in.h>
	#include <linux/netfilter.h>
	#include <arpa/inet.h>
	#include <errno.h>
#endif
#include <algorithm>
#include <fcntl.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "log.h"
#include <errno.h>


//Link

Link::Link(std::string description)
{
	buffer = 0;
	receiveStartTime = -1;
	lastRetry = - RETRY_PERIOD;
	this->description = description;
	FreeBuffer();
}

Link::~Link()
{
	FreeBuffer();
}

void Link::FreeBuffer()
{
	if (buffer != 0)
	{
		delete buffer;		
	}
	
	buffer = 0;
	bufferPointer = 0;
	bufferCapacity = 0;
	bufferSize = 0;
}

void Link::LogError(std::string text)
{
	Log::Error(description + text);
}

void Link::LogWarning(std::string text)
{
	Log::Warning(description + text);
}

void Link::LogInfo(std::string text)
{
	Log::Info(description + text);
}

void Link::StartReceive(long mseconds)
{
	if (receiveStartTime < 0)
	{
		receiveStartTime = mseconds;
	}	
}

bool Link::Receiving()
{
	return receiveStartTime >= 0;
}

long Link::ReceiveStartTime()
{
	return receiveStartTime;
}

void Link::CancelReceive()
{
	receiveStartTime = -1;
	FreeBuffer();
}

bool Link::HasData(int min, int max)
{
	if (buffer == 0)
	{
		bufferCapacity = 2 * max;
		buffer = new BYTE[bufferCapacity];	
		memset(buffer, 0, bufferCapacity);
		bufferSize = 0;
		bufferPointer = 0;
	}
	else if (bufferCapacity - bufferPointer < max)
	{
		bufferCapacity = 2 * max;
		auto newBuffer = new BYTE[bufferCapacity];
		memset(newBuffer, 0, bufferCapacity);
		memcpy(newBuffer, buffer + bufferPointer, bufferSize - bufferPointer);
		delete buffer;
		buffer = newBuffer;
		bufferSize -= bufferPointer;
		bufferPointer = 0;
	}
	
	if (bufferSize - bufferPointer < max)
	{
		auto bufferEnd = buffer + bufferSize;
		auto bytesRead = GetBytes(bufferEnd, max - (bufferSize - bufferPointer));
		bufferSize += bytesRead;
	}
	return bufferSize - bufferPointer >= min;
}

BYTE *Link::GetDataPointer()
{
	return buffer == 0 ? 0 : (buffer + bufferPointer);	
}

void Link::Skip(int bytes)
{
	bytes = bytes > 0 ? bytes : 0;
	
	if (bytes < bufferSize - bufferPointer)
	{
		bufferPointer += bytes;
	}
	else
	{
		FreeBuffer();
	}
}

//TcpLink

TcpLink::TcpLink(std::string description, std::string address, unsigned short port, bool isUdp):
	Link(description)
{
//	isUdp = false;
	this->isUdp = isUdp;
	this->address = address;
	this->port = port;
	handle = -1;	
	connecting = false;
	if (isUdp)
		OpenUDP();
	else
		Open();
}

TcpLink::~TcpLink()
{	
	Close();
}

void TcpLink::OpenUDP()
{	
	LogInfo("UDP: It's detected");
	auto time = GetmSeconds();
	
	if (handle < 0 && 
		time - lastRetry > RETRY_PERIOD)
	{
		lastRetry = time;
		handle = socket(AF_INET,SOCK_DGRAM,0);
		if (handle >= 0)
		{
			#ifndef _WIN32
				fcntl(handle, F_SETFL, O_NONBLOCK);
			#endif

			sockaddr_in addr;
			bzero(&addr,sizeof(addr));
	
			addr.sin_family = AF_INET;
			addr.sin_addr.s_addr = inet_addr(address.c_str());
			addr.sin_port = htons(port);		
			connecting = true;		
		}
		else
		{
			LogError("Could not create socket");
		}
	}

#ifndef _WIN32
	if (handle >= 0 && connecting)
	{
		if (SocketCanWrite(handle))
		{
			connecting = false;
			fcntl(handle, F_SETFL, 0);			
			LogInfo("Connection established");
		}
		else if (time - lastRetry > CONNECTION_TIMEOUT)
		{
			LogError("Could not establish connection");
			Close();
		}
	}
#endif
}

void TcpLink::Open()
{	
	if (isUdp)
	{
		OpenUDP();
		return;
	}	
	LogInfo("TCP: It's detected");
	auto time = GetmSeconds();
	
	if (handle < 0 && 
		time - lastRetry > RETRY_PERIOD)
	{
		lastRetry = time;
		handle = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
		if (handle >= 0)
		{
			#ifndef _WIN32
				fcntl(handle, F_SETFL, O_NONBLOCK);
			#endif

			sockaddr_in addr;
			memset(&addr, 0, sizeof(addr));		
			addr.sin_family = AF_INET;
			addr.sin_port = htons(port);		
			addr.sin_addr.s_addr = inet_addr(address.c_str());
			
		#ifdef _WIN32
			if (connect(handle, (sockaddr *) &addr, sizeof(addr)) < 0)
			{
				Close();				
				LogError("Could not establish connection");
			}		
			else
			{			
				LogInfo("Connection established");
			}
		#else
			connect(handle, (sockaddr *) &addr, sizeof(addr));
			connecting = true;
		#endif
		}
		else
		{
			LogError("Could not create socket");
		}
	}

#ifndef _WIN32
	if (handle >= 0 && connecting)
	{
		if (SocketCanWrite(handle))
		{
			connecting = false;
			fcntl(handle, F_SETFL, 0);			
			LogInfo("Connection established");
		}
		else if (time - lastRetry > CONNECTION_TIMEOUT)
		{
			LogError("Could not establish connection");
			Close();
		}
	}
#endif
}

void TcpLink::Close()
{
	if (handle >= 0)
	{		
		CloseSocket(handle);		
		connecting = false;
		handle = -1;		
	}
}

bool TcpLink::Send(BYTE *buffer, int count)
{
	if (isUdp)
	{
		LogInfo("UPD Send");
		LogInfo((char *)buffer);
		int sockfd,n;
		struct sockaddr_in servaddr,cliaddr;
		char recvline[1000];

		sockfd = socket(AF_INET,SOCK_DGRAM,0);

		bzero(&servaddr,sizeof(servaddr));

		servaddr.sin_family = AF_INET;
		servaddr.sin_addr.s_addr=inet_addr(address.c_str());
		servaddr.sin_port=htons(port);

		sendto(sockfd,buffer,count,0,
			(struct sockaddr *)&servaddr,sizeof(servaddr));	
		return true;
	}
	else
	{	
		if (connecting)
		{
			Open();
		}

		if (handle >= 0 && !connecting)
		{
			auto bytes = send(handle, (char *) buffer, count, 0);
			if (bytes <= 0)
			{
				Close();
				LogError("Connection lost");
			}
			else
			{
				return true;
			}
		}	
		else
		{
			Open();
		}
		return false;
	}
}

int TcpLink::GetBytes(BYTE *target, int count)
{	
	if (connecting)
	{
		Open ();		
	}

	if (handle >= 0 && !connecting)
	{
		if (SocketHasData(handle))
		{
			auto bytes = recv(handle, (char *) target, count, 0);
			if (bytes <= 0)
			{
				Close();
				Log::Error("Connection lost 2");				
			}
			else
			{
				return bytes;
			}
		}			
	}	
	else
	{
		Open();
	}
	
	return 0;	
}

//ComLink

ComLink::ComLink(std::string description, int portNumber, int speed,
				 int characterSize, Parity parity, bool usb):
	Link(description)
{
	this->portNumber = portNumber;
	this->speed = speed;
	this->characterSize = characterSize;
	this->parity = parity;
        this->usb = usb;
	
	port = -1;
	#ifndef _WIN32
		Open();
	#endif
}

ComLink::~ComLink()
{
	Close();
}

void ComLink::Open()
{
	#ifndef _WIN32
	auto time = GetmSeconds();
	if (port < 0 && 
		time - lastRetry > RETRY_PERIOD)
	{
		lastRetry = time;

                if(usb == true)
                {
                    port = open(("/dev/ttyUSB" + IntToString(portNumber)).c_str(), O_RDWR | O_NOCTTY | O_NDELAY);
                }
                else
                {
                    port = open(("/dev/ttyS"   + IntToString(portNumber)).c_str(), O_RDWR | O_NOCTTY | O_NDELAY);
                }

		if (port >= 0)
		{			
			SetBlocking(true);			

			speed_t spd = B19200;
			switch (speed)
			{
				case 0: spd = B0; break;
				case 50: spd = B50; break;
				case 75: spd = B75; break;
				case 110: spd = B110; break;
				case 134: spd = B134; break;
				case 150: spd = B150; break;
				case 200: spd = B200; break;
				case 300: spd = B300; break;
				case 600: spd = B600; break;
				case 1200: spd = B1200; break;
				case 1800: spd = B1800; break;
				case 2400: spd = B2400; break;
				case 4800: spd = B4800; break;
				case 9600: spd = B9600; break;
				case 19200: spd = B19200; break;
				case 38400: spd = B38400; break;
				case 57600: spd = B57600; break;
				
				case 115200: spd = B115200; break;
				case 230400: spd = B230400; break;
				case 460800: spd = B460800; break;
				case 500000: spd = B500000; break;
				case 576000: spd = B576000; break;
				case 921600: spd = B921600; break;
				case 1000000: spd = B1000000; break;
				case 1152000: spd = B1152000; break;
				case 1500000: spd = B1500000; break;
				case 2000000: spd = B2000000; break;
				case 2500000: spd = B2500000; break;
				case 3000000: spd = B3000000; break;
				
				default: LogWarning("Invalid baud rate: " + IntToString(speed));
			}

			auto character = CS8;
			switch (characterSize)
			{				
				case 5: character = CS5; break;
				case 6: character = CS6; break;
				case 7: character = CS7; break;
				case 8: character = CS8; break;
				
				default: LogWarning("Invalid character size: " + IntToString(characterSize));
			}
			
			struct termios options;
			int iError = tcgetattr(port, &options);
			if (iError < 0)
			{
				LogWarning("Failed to access the port settings: " + IntToString(portNumber) + " " + strerror(errno));
			}
			
			memset(&(options.c_iflag), 0, sizeof(tcflag_t));
			memset(&(options.c_oflag), 0, sizeof(tcflag_t));

			options.c_cflag &= ~CSIZE;
			options.c_cflag |= character;
			options.c_cflag |= (CLOCAL | CREAD);
			options.c_cflag &= ~CSTOPB;
			if (parity == Even)
			{
				options.c_cflag |= PARENB;
				options.c_cflag &= ~PARODD;
			}
			else if (parity == Odd)
			{
				options.c_cflag |= (PARENB | PARODD);				
			}
			else
			{
				options.c_cflag &= ~(PARENB | PARODD);
			}

			options.c_lflag &= ~(ICANON | ECHO | ECHOE | ISIG);

			options.c_cc[VMIN] = 0;
			options.c_cc[VTIME] = 0;

			cfsetispeed(&options, spd);
			cfsetospeed(&options, spd);

			if (tcsetattr(port, TCSANOW, &options) < 0)
			{				
				LogWarning("Failed to setup the port");				
			}
                        else
                        {
                            LogInfo("Port opened");
                        }
		}
		else
		{
			LogError("Failed to open port");
		}
	}
	#endif
}

void ComLink::Close()
{
	#ifndef _WIN32
		if (port >= 0)
		{
			close(port);
			port = -1;			
		}
	#endif
}

void ComLink::SetBlocking(bool enabled)
{
	#ifndef _WIN32
		fcntl(port, F_SETFL, enabled ? 0 : O_NONBLOCK);
	#endif
}

bool ComLink::Send(BYTE *buffer, int count)
{
	if (port >= 0)
	{		
		#ifndef _WIN32
			auto bytes = write(port, (char *) buffer, count);
			if (bytes <= 0)
			{
				Close();			
				LogError("Connection lost");
			}
			else
			{
				return true;
			}
		#endif
	}	
	else
	{
		Open();
	}
	return false;
}

int ComLink::GetBytes(BYTE *target, int count)
{
	if (port >= 0 )
	{
		#ifndef _WIN32			
			auto bytes = read(port, target, count);			
			if (bytes >= 0)
			{
				return bytes;
			}				
			else
			{
				Close();
				LogError("Connection lost");
			}
		#endif
	}
	else
	{
		Open();		
	}
	return 0;
}

//SocketLink

SocketLink::SocketLink(std::string description, std::string file): 
	Link(description)
{
	this->file = file;
	handle = -1;
}

SocketLink::~SocketLink()
{
	Close();
}

void SocketLink::Open()
{
	#ifndef _WIN32
		auto time = GetmSeconds();
		if (handle < 0 && time - lastRetry > RETRY_PERIOD)
		{
			lastRetry = time;
			handle = socket(AF_UNIX, SOCK_STREAM, 0);
			if (handle >= 0)
			{
				struct sockaddr_un address;
				address.sun_family = AF_UNIX;
				strcpy(address.sun_path, file.c_str());
				if (connect(handle, (struct sockaddr *) &address, file.size() + sizeof(address.sun_family)) < 0)
				{
					handle = -1;
					LogError("Failed to open " + file); 
				}
				else
				{
					fcntl(handle, F_SETFL, 0);			
					LogInfo("Connection established");
				}
			}
			else
			{
				LogError("Failed to create socket");
			}
		}
	#endif
}

void SocketLink::Close()
{
	#ifndef _WIN32
		if (handle >= 0)
		{
			close(handle);
			handle = -1;
		}
	#endif
}

bool SocketLink::Send(BYTE *buffer, int count)
{
	#ifndef _WIN32
		if (handle >= 0)
		{	
			auto bytes = send(handle, buffer, count, 0);
			if (bytes <= 0)
			{
				LogError("Connection lost");
				Close();
			}
			else 
			{
				return true;
			}
		}
		else
		{
			Open();
		}
	#endif
	return false;
}

int SocketLink::GetBytes(BYTE *buffer, int count)
{
	#ifndef _WIN32
		if (handle >= 0 && SocketHasData(handle))
		{
			auto bytes = recv(handle, buffer, count, 0);
			if (bytes >= 0)
			{
				return bytes;
			}
			else
			{
				LogError("Connection lost");
				Close();
			}
		}
		else
		{
			Open();
		}
	#endif
	return 0;
}

//Message

Message::Message(ASTValue *value)
{
	auto bits = GetBitCount(value);
	size = bits % 8 == 0 ? bits / 8 : bits / 8 + 1;
						
	data = new BYTE[size];
	memset(data, 0, size);
			
	WriteData(0, value);
}

Message::~Message()
{
	if (data != 0)
	{
		delete data;
	}
}

int Message::GetBitCount(ASTValue *value)
{
	switch (value->GetType())
	{
		case Number:
		{
			return value->AsNumber()->GetBitCount();			
		}		
		case Symbol:
		{
			return 8;
		}
		case Variable:
		{		
			return value->AsString()->GetBitCount();
		}
		case String:
		{
			return 8 * (value->AsString()->GetValue().size() - 2);			
		}		
		case BitBlock:
		{
			auto result = 0;
			auto count = value->AsBitBlock()->Count();
			for (auto i = 0; i < count; i++)
			{
				result += GetBitCount(value->AsBitBlock()->GetItem(i));
			}			
			return result;
		}
		default:
		{
			return 0;
		}
	}
}

void Message::WriteData(int shift, ASTValue *value)
{
	auto target = data + shift / 8;
	auto start = shift % 8;
	switch (value->GetType())
	{
		case Number:
		{
			WriteNumber(target, start,
					   value->AsNumber()->GetValue(),
					   value->AsNumber()->GetBitCount());			
			break;
		}		
		case Symbol:
		{
			WriteNumber(target, start,
					   SymbolToNumber(value->AsString()->GetValue()),
					   8);			
			break;
		}
		case Variable:
		{
			auto string = value->AsString();
			Chunk chunk;
			chunk.Start = shift;
			chunk.Size = string->GetBitCount();
			names[string->GetValue()] = chunk;
			
			break;
		}
		case String:
		{
			auto string = value->AsString()->GetValue();			
			CopyData(target, start, (BYTE *) string.c_str() + 1, 0, (string.length() - 2) * 8);			
			break;
		}		
		case BitBlock:
		{			
			auto count = value->AsBitBlock()->Count();
			for (auto i = 0; i < count; i++)
			{
				auto item = value->AsBitBlock()->GetItem(i);
				auto bits = GetBitCount(item);
				WriteData(shift, item);
				shift += bits;				
			}			
		}		
	}
}

BYTE Message::GetBits(BYTE value, int start, int count, int position) 
{
	if (position < 0 || position >= 8)
	{
		position = start;
	}  
	BYTE mask = 0;
	for (auto i = start; i < start + count; i++)
	{
		mask += 1 << (8 - (i + 1));
	}
	value = value & mask;
	return position > start ?
		(value >> (position - start)) :
		(value << (start - position));	
}

BYTE Message::Combine(BYTE target, BYTE source, int sourceShift, int bits)
{
	return 
		GetBits(target, 0, sourceShift) +
		GetBits(source, sourceShift, bits) +
		GetBits(target, sourceShift + bits, 8 - (sourceShift + bits));
}

void Message::WriteNumber(BYTE *target, int targetShift, unsigned int number, int bits)
{	
	BYTE data[4];
	for (auto i = 0; i < 4; i++)
	{
		data[i] = *((BYTE *) &number + 3 - i);
	}
	auto byteShift = bits % 8 == 0 ? (4 - bits / 8) : (4 - (bits / 8 + 1));
	auto bitShift = bits % 8 == 0 ? 0 : (8 - bits % 8);
	CopyData(target, targetShift, data + byteShift, bitShift, bits);
}

unsigned int Message::ReadNumber(BYTE *source, int sourceShift, int bits)
{	
	BYTE data[4];	
	memset(data, 0, 4);
	
	auto byteShift = bits % 8 == 0 ? (4 - bits / 8) : (4 - (bits / 8 + 1));
	auto bitShift = bits % 8 == 0 ? 0 : (8 - bits % 8);
	
	CopyData(data + byteShift, bitShift, source, sourceShift, bits);
	
	unsigned int number;
	for (auto i = 0; i < 4; i++)
	{
		*((BYTE *) &number + 3 - i) = data[i];
	}
	return number;
}

void Message::CopyData(BYTE *target, int targetShift, BYTE *source, int sourceShift, int bits)
{						
	while (bits > 0)
	{
		auto nextByte = 
			GetBits(*source, sourceShift, 8 - sourceShift, 0) +
			(bits > (8 - sourceShift) ?
				GetBits(*(source + 1), 0, sourceShift, 8 - sourceShift) : 0);		
		auto nextBits = Min(bits, 8);
		
		auto firstPart = GetBits(nextByte, 0, (8 - targetShift), targetShift);
		auto secondPart = GetBits(nextByte, (8 - targetShift), targetShift, 0);
		
		*target = Combine(*target, firstPart, targetShift, Min(8 - targetShift, nextBits));
		
		nextBits -= (8 - targetShift);
		target += 1;
		if (nextBits > 0)
		{						
			*target = Combine(*target, secondPart, 0, Min(targetShift, nextBits));
		}
				
		source += 1;
		bits -= 8;			
	}
}

unsigned int Message::SymbolToNumber(std::string symbol)
{	
	return 	
		symbol == "cr" ? 13 :
		symbol == "nl" ? 10 :
		symbol == "bs" ? 8 :						
		0;
}

bool Message::Send(Link *link)
{
	if (data == 0)
	{
		return true;
	}
	else
	{
		return link != 0 && link->Send(data, size);
	}	
}

int Message::GetSize()
{
	return size;
}

int Message::GetNamesCount()
{
	return names.size();
}

std::string Message::GetName(int index)
{
	for (auto i = names.begin(); i != names.end(); i++)
	{
		if (index <= 0)
		{
			return i->first;
		}		
		index -= 1;
	}
	return "";
}

unsigned int Message::GetValue(std::string name)
{
	return values[name];
}

void Message::Bind(std::string name, unsigned int value)
{	
	auto i = names.find(name);
	if (i != names.end())
	{
		auto chunk = i->second;
		WriteNumber(data + chunk.Start / 8, chunk.Start % 8, value, chunk.Size);		
		values[name] = value;
	}	
}

void Message::ClearBindings()
{
	values.clear();
}

bool Message::Compare(BYTE *data, bool caseSensitive)
{
	for (auto i = names.begin(); i != names.end(); i++)
	{
		auto name = i->first;
		if (values.find(name) == values.end())
		{
			auto chunk = i->second;
			auto byteShift = chunk.Start / 8;
			auto bitShift = chunk.Start % 8;
			CopyData(this->data + byteShift, bitShift, 
					 data + byteShift, bitShift, chunk.Size);
		}
	}
	
	for (auto i = 0; i < size; i++)
	{ 
		if ((caseSensitive && data[i] != this->data[i]) ||
			!caseSensitive && data[i] != tolower(this->data[i]) &&
							  data[i] != toupper(this->data[i]))
		{
			return false;
		}	
	}
		
	for (auto i = names.begin(); i != names.end(); i++)
	{
		auto name = i->first;
		if (values.find(name) == values.end())
		{
			auto chunk = i->second;
			auto byteShift = chunk.Start / 8;
			auto bitShift = chunk.Start % 8;
			values[name] = ReadNumber(data + byteShift, bitShift, chunk.Size);
		}
	}
	
	return true;
}

std::string Message::ToString()
{
	char digits[] = {'0', '1', '2', '3', '4', '5', '6', '7',
				     '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
	std::string result = "";
	
	for (auto i = 0; i < size; i++)
	{
		char byte = data[i];
		result = result + digits[(byte >> 4) & 15] + digits[byte & 15] + " ";
	}
	return result;
}

std::string Message::ToSimpleString()
{
	std::string result( reinterpret_cast<char const*>(data), size ) ;
	return result;
}

bool CheckSocket(int socket, fd_set *read, fd_set *write)
{
	timeval timeout;
	memset(&timeout, 0, sizeof(timeout));

	return select(socket + 1, read, write, 0, &timeout) > 0;
}

bool SocketHasData(int socket)
{
	fd_set set;		
	FD_ZERO(&set);
	FD_SET(socket, &set);
				
	return CheckSocket(socket, &set, 0);
}

bool SocketCanWrite(int socket)
{
	fd_set set;		
	FD_ZERO(&set);
	FD_SET(socket, &set);
				
	return CheckSocket(socket, 0, &set);
}

void CloseSocket(int socket)
{
	#ifdef _WIN32
		closesocket(socket);
	#else 
		close(socket);
	#endif
}

