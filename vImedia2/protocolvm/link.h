#ifndef __link__
#define __link__

#include <string>
#include <map>
#include <stdlib.h>
#include <iostream>


#include "ast.h"

#ifdef _WIN32
	#define WOULDBLOCK WSAWOULDBLOCK
#else
	#define WOULDBLOCK EWOULDBLOCK
#endif

typedef unsigned char BYTE;

#define CONNECTION_TIMEOUT 5000
#define RETRY_PERIOD 10000

using namespace std;

class Link
{		
	private:
		long receiveStartTime;		

		BYTE *buffer;
		int bufferPointer;
		int bufferCapacity;
		int bufferSize;		
		
		std::string description;
		
		void FreeBuffer();
	protected:
		long lastRetry;

		virtual int GetBytes(BYTE *target, int count) = 0;
		void LogWarning(std::string text);
		void LogError(std::string text);
		void LogInfo(std::string text);
	public:
		virtual bool Send(BYTE *buffer, int count) = 0;
	
		void StartReceive(long mseconds);
		bool Receiving();
		long ReceiveStartTime();
		void CancelReceive();
		
		bool HasData(int min, int max);
		BYTE *GetDataPointer();
		void Skip(int bytes);
	
		Link(std::string description);
		virtual ~Link();
};

class TcpLink: public Link
{
	private:
		std::string address;
		unsigned short port;		
		bool connecting;
		int handle;
		bool isUdp;
		
		void Open();
		void OpenUDP();
		void Close();		
	protected:
		virtual int GetBytes(BYTE *target, int count);
	public:
		virtual bool Send(BYTE *buffer, int count);
			
		TcpLink(std::string description, std::string address, unsigned short port, bool isUdp = false);
		virtual ~TcpLink();
};

enum Parity {None, Even, Odd};

class ComLink: public Link
{
	private:
		int portNumber; 
		int speed;
		int port;
		int characterSize;
		Parity parity;
                bool usb;
		
		void Open();
		void Close();
		void SetBlocking(bool enabled);
	protected:
		virtual int GetBytes(BYTE *target, int count);
	public:
		virtual bool Send(BYTE *buffer, int count);
				
		ComLink(std::string description, int portNumber, int speed, 
				int characterSize, Parity parity, bool usb);
		virtual ~ComLink();
};

class SocketLink: public Link
{
	private:
		std::string file;
		int handle;

		void Open();
		void Close();
	protected:
		virtual int GetBytes(BYTE *target, int count);
	public:
		virtual bool Send(BYTE *buffer, int count);

		SocketLink(std::string description, std::string file);
		virtual ~SocketLink();
};

struct Chunk
{
	int Start;
	int Size;
};

class Message
{
	private :
		BYTE *data;
		int size;		
		std::map<std::string, Chunk> names; 
		std::map<std::string, unsigned int> values;
		
		int GetBitCount(ASTValue *value);
		BYTE GetBits(BYTE value, int start, int count, int position = -1);
		BYTE Combine(BYTE target, BYTE source, int sourceShift, int bits);
		void WriteNumber(BYTE *target, int targetShift, unsigned int number, int bits);
		unsigned int ReadNumber(BYTE *source, int sourceShift, int bits);
		void CopyData(BYTE *target, int targetShift, BYTE *source, int sourceShift, int bits);
		void WriteData(int shift, ASTValue *value);
		unsigned int SymbolToNumber(std::string symbol);
	public: 
		bool Send(Link *link);
		bool Compare(BYTE *data, bool caseSensitive = true);
		
		int GetSize();
		void Bind(std::string name, unsigned int value);
		void ClearBindings();
		
		int GetNamesCount();
		std::string GetName(int index);
		unsigned int GetValue(std::string name);
		
		std::string ToString();
		std::string ToSimpleString();
		
		Message(ASTValue *value);
		~Message();
};

bool SocketHasData(int socket);
bool SocketCanWrite(int socket);
void CloseSocket(int socket);

template <class T> T Min(T a, T b)
{
	return a < b ? a : b;
}

template <class T> T Max(T a, T b)
{
	return a > b ? a : b;
}

#endif // __link__
