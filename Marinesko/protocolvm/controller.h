#ifndef __controller__
#define __controller__

#include <vector>

#include "connection.h"

#define CONNECTION_BUFFER 256

class Controller;

class InterfaceConnection
{
	private:		
		int handle;
		BYTE buffer[CONNECTION_BUFFER];
		int size;
		
		bool closed;
		
		Controller *controller;
	public:		
		void Update();
		bool IsClosed();
		
		bool SendState(Connection *connection, std::string stateName = "");				

		InterfaceConnection(Controller *controller, int handle);
		~InterfaceConnection();
};

class Controller 
{
	private:
		std::map<std::string, Connection *> connections;
		std::vector<InterfaceConnection *> interfaces;
		int serverHandle;
		
		void StartServer();
		void StopServer();
		void AcceptConnection();
	friend class InterfaceConnection;
	public:
		void Run();
		
		Controller(const std::vector<std::string> &protocols);
		~Controller();
};

#endif // __controller__
