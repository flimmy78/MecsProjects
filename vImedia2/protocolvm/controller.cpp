#include <fstream>

#ifdef _WIN32
	#include <winsock2.h>
	#include <ws2tcpip.h>
#else
	#include <sys/socket.h>
	#include <sys/types.h>
	#include <netinet/in.h>
#endif
#include <stdlib.h>
#include <fcntl.h>
#include <time.h>
#include <string.h>
#include <iostream>
#include <fstream>

#include <ctime>
#include <cerrno>

#include "controller.h"
#include "ast.h"
#include "stream.h"
#include "parser.h"
#include "log.h"

using namespace std;

#define INTERFACE_PORT 4939

//InterfaceConnection


void nsleep(int milisec)
{
	struct timespec req = {0};
	req.tv_sec = 0;
	req.tv_nsec = milisec * 1000000L;
	nanosleep(&req, (struct timespec *)NULL);
}

InterfaceConnection::InterfaceConnection(Controller *controller, int handle)
{
	this->controller = controller;
	this->handle = handle;
	size = 0;
	closed = false;
}

InterfaceConnection::~InterfaceConnection()
{
	CloseSocket(handle);
}

bool InterfaceConnection::SendState(Connection *connection, std::string stateName)
{
	if (!closed)
	{
		auto message = std::string("");

		if (stateName == "")
		{
			auto stateNames = connection->StateNames();
			for (auto i = 0u; i < stateNames.size(); i++)
			{
				message += connection->GetName() + " " +
					stateNames[i] + " " + connection->StateValue(stateNames[i]) + "\n";
			}
		}
		else
		{
			message = connection->GetName() + " " +
				stateName + " " + connection->StateValue(stateName) + "\n";
		}

		if (send(handle, message.c_str(), message.size(), 0) <= 0)
		{
			closed = true;
		}
		else
		{
			return true;
		}
	}
	return false;
}

std::string getCommands(Connection *device)
{
	std::string result = "{commands:[";
	for (auto k = device->commands.begin(); k != device->commands.end(); k++)
	{
		auto command = k->second;
		std::string resultcommand = "{command-name:" + k->first + ",\n";
		std::string resultdescription = "command-description:\"";
		std::string resultshortdescription = "command-short-description:\"";
		for (auto d = command.Operations.begin(); d != command.Operations.end();d++)
		{
			auto description = dynamic_cast<CommandDescription *>(*d);
			if (description != 0){

				resultdescription += description->ToString();
			}

			auto shortdescription = dynamic_cast<CommandShortDescription *>(*d);
			if (shortdescription != 0){
				resultshortdescription += shortdescription->ToString();
			}
		}

		resultcommand += resultshortdescription + "\",\n" + resultdescription + "\",\n";
		std::string parameters = "parameters:[";
		for (auto a = command.Arguments.begin(); a != command.Arguments.end(); ++a)
		{
			parameters += "{param-name:\"" + *a + "\"}\n,";

		}
		if (command.Arguments.size() > 0)
			parameters = parameters.substr(0, parameters.size() - 1);
		parameters +=  "]}\n,";
		result += resultcommand + parameters;
	}
	if (device->commands.size() > 0)
		result = result.substr(0, result.size() - 1);
	result += "]}";
	return result;
}

void InterfaceConnection::Update()
{
	if (closed)
	{
		return;
	}

	auto count = CONNECTION_BUFFER - size;
	if (SocketHasData(handle))
	{
		auto bytes = recv(handle, (char *) buffer + size, count, 0);
		if (bytes <= 0)
		{
			closed = true;
			return;
		}
		size += bytes;
	}

	for (auto i = 0; i < size; i++)
	{
		if (*((char *) buffer + i) == '\n')
		{
			auto line = std::string((char *)buffer, i + 1);

			if (line.substr(0, 7) == "listdev")
			{
				auto message = std::string("");
				auto lastitem = controller->connections.end();
				--lastitem;
				for (auto j = controller->connections.begin(); j != controller->connections.end(); ++j)
				{
					message += "<" + j->first + ">";
					if (j != lastitem)
						message += "&";
				}
				send(handle, message.c_str(), message.size(), 0);
			}
			else if (line.substr(0, 11) == "listcommand")
			{

				std::string separators = " \t\n\r";


				auto wordEnd = 11u;
				auto wordStart = line.find_first_not_of(separators, wordEnd);

				wordEnd = line.find_first_of(separators, wordStart + 1);

				if (wordStart != std::string::npos)
				{
					auto devName = std::string(line.substr(wordStart,
						 wordEnd - wordStart));

					auto deviceIterator = controller->connections.find(devName);
					if (deviceIterator != controller->connections.end())
					{
						auto result = getCommands(deviceIterator->second);
						send(handle, result.c_str(), result.size(), 0);
					}
				}
			}
			else if (line.substr(0, 4) == "list")
			{
				std::string response = "";
				for (auto j = controller->connections.begin(); j != controller->connections.end(); ++j)
				{
					if (!SendState(j->second))
					{
						return;
					}
				}
			}
			else if (line.substr(0, 4) == "info")
			{
				std::string separators = " \t\n\r";

				auto wordEnd = 4u;
				auto wordStart = line.find_first_not_of(separators, wordEnd);

				wordEnd = line.find_first_of(separators, wordStart + 1);

				if (wordStart != std::string::npos)
				{
					auto devName = std::string(line.substr(wordStart,
						 wordEnd - wordStart));

					auto deviceIterator = controller->connections.find(devName);
					if (deviceIterator != controller->connections.end())
					{
						auto device = deviceIterator->second;
						auto result = std::string("{name:");
						result += devName + ",Protocol:\"" + device->GetType() + "\"," + device->GetInformation()
								+ getCommands(device) + "}";
						send(handle, result.c_str(), result.size(), 0);
					}
				}

			}
			else if (line.substr(0, 6) == "status")
			{
				std::string separators = " \t\n\r";

				auto wordEnd = 6u;
				auto wordStart = line.find_first_not_of(separators, wordEnd);

				wordEnd = line.find_first_of(separators, wordStart + 1);
				if (wordStart != std::string::npos)
				{
					auto devName = std::string(line.substr(wordStart,
						 wordEnd - wordStart));

					auto device = controller->connections.find(devName);
					if (device != controller->connections.end())
						SendState(device->second);
				}
			}
			else if (line.substr(0, 7) == "command")
			{
				std::vector<std::string> words;
				std::string separators = " \t\n\r";
				auto wordEnd = 7u;
				auto wordStart = 0u;
				int nposExt = -1;
				while (wordStart != nposExt)
				{
					wordStart = line.find_first_not_of(separators, wordEnd);
					wordEnd = line.find_first_of(separators, wordStart + 1);
					if (wordStart != nposExt)
					{
						words.push_back(line.substr(wordStart,
							 wordEnd - wordStart));
					}
				}

				if (words.size() >= 2)
				{
					auto name = words[0];
					auto command = words[1];
					std::vector<unsigned int> arguments;
					for (auto j = 2u; j < words.size(); j++)
					{
						arguments.push_back(StringToInt(words[j]));
					}

					for (auto j = controller->connections.begin(); j != controller->connections.end(); ++j)
					{
						auto connection = j->second;
						if (name == "all" || connection->GetName() == name)
						{
							connection->Execute(command, arguments);
						}
					}
				}
			}
			else if (line.substr(0,4) == "exit" || line.substr(0,4) == "quit")
			{
				exit(0);
			}

			memcpy(buffer, buffer + (i + 1), CONNECTION_BUFFER - (i + 1));
			size -= (i + 1);

			break;
		}
	}
	if (size == CONNECTION_BUFFER)
	{
		size = 0;
	}
}

bool InterfaceConnection::IsClosed()
{
	return closed;
}

//Controller

Controller::Controller(const std::vector<std::string> &protocols)
{
	if (std::ifstream("/tmp/reboot.mecs").good())
	{
		cout << "waiting..." << endl;
		nsleep(5000);
	}
	#ifdef _WIN32
		WSADATA data;
		if (WSAStartup(0x0202, &data) != 0)
		{
			Log::Error("Failed to initialize sockets");
		}
	#endif

	for (auto i = 0u; i < protocols.size(); i++)
	{
		auto file =
			new std::ifstream(protocols[i].c_str(),
							  std::ifstream::in | std::ifstream::binary);
		if (file->is_open())
		{
			auto *stream = new Stream(file);
			Parser parser(stream);
			auto ast = parser.Parse();

			if (ast == AST::Error)
			{
				Log::Error("Syntax error in file " + protocols[i]);
			}
			else
			{
				auto protocol = static_cast<ASTProtocol *>(ast);
				Log::Info("Loaded protocol " + protocol->GetName() + ": " + protocol->GetType());

				auto connection = new Connection(protocol, &connections);
				connections[connection->GetName()] = connection;
			}
			ast->Delete(ast);
		}
		else
		{
			Log::Error("Could not open " + protocols[i]);
		}
	}

	serverHandle = -1;
	StartServer();
}

Controller::~Controller()
{
	for (auto i = connections.begin(); i != connections.end(); i++)
	{
		delete i->second;

	}
	connections.clear();
	StopServer();
}

void Controller::StartServer()
{
	serverHandle = socket(PF_INET, SOCK_STREAM, IPPROTO_TCP);
	if (serverHandle >= 0)
	{
		sockaddr_in addr;
		memset(&addr, 0, sizeof(addr));
		addr.sin_family = AF_INET;
		addr.sin_port = htons(INTERFACE_PORT);
		addr.sin_addr.s_addr = htonl(INADDR_ANY);

		if (bind(serverHandle, (sockaddr *) &addr, sizeof(addr)) < 0 ||
			listen(serverHandle, 10) < 0)
		{
			Log::Error("Control server initialization failed");
			StopServer();
		}
		else
		{
			Log::Info("Control server has been started");
		}
	}
	else
	{
		Log::Error("Failed to create server socket");
	}
}

void Controller::StopServer()
{
	if (serverHandle >= 0)
	{
		CloseSocket(serverHandle);
		for (auto i = 0u; i < interfaces.size(); i++)
		{
			delete interfaces[i];
		}
		interfaces.clear();
		serverHandle = -1;
	}
	ofstream ofs("/tmp/reboot.mecs"); //создать
	ofs.close();
	exit(0);
}

void Controller::AcceptConnection()
{
	if (serverHandle >= 0 && SocketHasData(serverHandle))
	{
		int handle = accept(serverHandle, 0, 0);
		if (handle >= 0)
		{
			auto newInterface = new InterfaceConnection(this, handle);
			Log::Info("Incoming connection accepted");
			for (auto i = 0; i < interfaces.size(); i++)
			{
				if (interfaces[i]->IsClosed())
				{
					delete interfaces[i];
					interfaces[i] = newInterface;
					return;
				}
			}
			interfaces.push_back(newInterface);
		}
		else
		{
			Log::Error("Failed to accept an incoming connection");
		}
	}
}

void Controller::Run()
{
	Log::Info("Controller is running");
	auto ended = false;
	while (!ended)
	{
		nsleep(30);

		for (auto i = connections.begin(); i != connections.end(); ++i)
		{
			i->second->Update(GetmSeconds());
			if (i->second->StateChanged())
			{
				for (auto j = 0u; j < interfaces.size(); j++)
				{
					interfaces[j]->SendState(i->second, i->second->ChangedStateName());
				}
			}
		}

		for (auto i = 0u; i < interfaces.size(); i++)
		{
			interfaces[i]->Update();
		}

		AcceptConnection();
	}
}
