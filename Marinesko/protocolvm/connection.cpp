#include "connection.h"

#include <stdlib.h>
#include <iostream>
#include <sstream>
#include <cctype>
#include <string.h>
#ifdef _WIN32
	#include <winsock.h>
#else
	#include <sys/socket.h>	
#endif

#include "log.h"
using namespace std;

//Operation

Operation::Operation(Connection *connection): connection(connection)
{

}

//SendOperation
//TODO: v1.1 SendOperation now links itself to 'Connection' according to 'message' info (look up ::Execute())
SendOperation::SendOperation(std::map<std::string, Connection*>* connections, Message *message, std::string destination):
    Operation(NULL)
{
	this->message = message;
	this->connections = connections;
	this->destination = destination;
}

SendOperation::~SendOperation()
{
	delete message;	
}

bool SendOperation::Execute(long mseconds)
{
  //TODO: v1.1 Now linking 'SendOperation' with actual 'Connection' accordingly to 'destination'
  if(connection == NULL)
  {
    for(auto i = connections->begin(); i != connections->end(); ++i)
    {
      auto connectionName = i->second->GetName();
      if(connectionName == destination)
      {
        connection = i->second;
        break;
      }
    }
    if(connection == NULL)
    {
      Log::Warning("Protocol corrupted");
      return false; //Actually, we're screwed..
    }
  }
  connection->Bind(message);  
  auto done = message->Send(connection->link);
  message->ClearBindings();

  if (!done)
  {
    connection->ChangeState("state", "unknown");
  }
  return done;
}

//CommandDescription
CommandDescription::CommandDescription(Message *description):
    Operation(NULL)
{
	this->description = description;
}

CommandDescription::~CommandDescription()
{
	delete description;
}

bool CommandDescription::Execute(long mseconds)
{
	return true;
}

std::string CommandDescription::ToString()
{
	return this->description->ToSimpleString();
}

//CommandShortDescription
CommandShortDescription::CommandShortDescription(Message *description):
    Operation(NULL)
{
	this->description = description;
}

std::string CommandShortDescription::ToString()
{
	return this->description->ToSimpleString();
}

CommandShortDescription::~CommandShortDescription()
{
	delete description;
}

bool CommandShortDescription::Execute(long mseconds)
{
	return true;
}

//OperationBranch

OperationBranch::OperationBranch(Message *value)
{
	this->value = value;
}

OperationBranch::~OperationBranch()
{
	delete value;
	for (auto i = 0u; i < operations.size(); i++)
	{
		delete operations[i];
	}
}

void OperationBranch::AddOperation(Operation *operation)
{
	operations.push_back(operation);
}

Message *OperationBranch::GetValue()
{
	return value;
}

int OperationBranch::Count()
{
	return operations.size();
}

Operation *OperationBranch::GetOperation(int i)
{
	return operations[i];
}

//ReceiveOperation

ReceiveOperation::ReceiveOperation(Connection *connection):
	Operation(connection)
{
	defaultBranch = 0;
}

ReceiveOperation::~ReceiveOperation()
{
	for (auto i = 0u; i < branches.size(); i++)
	{
		delete branches[i];
	}
	
	if (defaultBranch != 0)
	{
		delete defaultBranch;
	}
}

void ReceiveOperation::AddBranch(OperationBranch *branch, bool timeout)
{	
	if (timeout)
	{
		if (defaultBranch != 0)
		{
			delete defaultBranch;
		}
		defaultBranch = branch;
	}
	else
	{
		branches.push_back(branch);
	}	
}

void ReceiveOperation::PushBranch(OperationBranch *branch)
{
	connection->link->CancelReceive();
	
	for (auto i = 0u; i < branches.size(); i++)
	{	
		branches[i]->GetValue()->ClearBindings();
	}
	
	if (branch != 0)
	{		
		auto index = connection->operations.begin();
		while (*index != this && index != connection->operations.end())
		{
			index++;			
		}
		if (index != connection->operations.end())
		{
			index++;
		}
									
		for (auto i = 0; i < branch->Count(); i++)
		{
			connection->operations.insert(index, branch->GetOperation(i));
		}
	}	
}

bool ReceiveOperation::Execute(long mseconds)
{	
	if (connection->link == 0)
	{
		return true;
	}

	if (!connection->link->Receiving())
	{
		connection->link->StartReceive(mseconds);

		for (auto i = 0u; i < branches.size(); i++)
		{				
			connection->Bind(branches[i]->GetValue());
		}
	}
	else if (mseconds - connection->link->ReceiveStartTime() > connection->timeout)
	{		
		PushBranch(defaultBranch);
		return true;
	}
		
	auto max = 0;
	auto min = 1000000;
	for (auto i = 0u; i < branches.size(); i++)
	{		
		auto size = branches[i]->GetValue()->GetSize();
		max = Max(max, size);
		min = Min(min, size);
	}
	
	if (connection->link->HasData(min, max))
	{
		auto data = connection->link->GetDataPointer();
		for (auto i = 0u; i < branches.size(); i++)
		{
			auto message = branches[i]->GetValue();
			//TODO v.1.12 ADD "PARTIAL COMPARE" (string *contains* stuff, not exactly matches it) HERE <<<
			// Compare is stdstring's function		


if (data != NULL)
{
	//std::string s ((char *)data);
	//Log::Warning(s);
}


			if (message->Compare(data, connection->caseSensitive))
			{
				for (auto j = 0; j < message->GetNamesCount(); j++)
				{	
					auto name = message->GetName(j);
					//	Log::Warning(name);
					//		std::string s ((char *)data);
					//Log::Warning(s);
					//std::string s1 ((char *)message->GetValue(name));
					//	Log::Warning(s1);
					connection->SetValue(name, message->GetValue(name));					
				}
				
				PushBranch(branches[i]);				
				return true;
			}
		}
		
		connection->link->Skip(1);
	}	
	
	return false;
}

//StateChangeOperation

StateChangeOperation::StateChangeOperation(Connection *connection, std::string state, std::string value):
	Operation(connection)
{	
	this->state = state;
	this->value = value;
}

bool StateChangeOperation::Execute(long mseconds)
{	
	connection->ChangeState(state, value);

	return true;
}

//ScopeChangeOperation

ScopeChangeOperation::ScopeChangeOperation(Connection *connection, bool newScope):
	Operation(connection)
{	
	this->newScope = newScope;
}

bool ScopeChangeOperation::Execute(long mseconds)
{
	if (newScope)
	{		
		connection->scopeStack.push_back(std::map<std::string, unsigned int>());		
	}
	else
	{
		if (connection->scopeStack.size() > 0)
		{			
			connection->scopeStack.pop_back();
		}
	}
	
	return true;
}

//Conection

Connection::Connection(ASTProtocol *source, std::map<std::string, Connection*>* connections)
{
	//v1.1 Look up .h
	this->connections = connections;

	name = source->GetName();	
	type = source->GetType();
			
	queryPeriod = 5000u;
	timeout = 5000u;	
	caseSensitive = true;		

	state["state"] = "unknown";	
	lastQuery = 0;
	
	ip = "127.0.0.1";
	port = 4352;
	speed = 19200;
	characterSize = 8;
	parity = None;

	socketFile = "";

	blocked = false;
	stateChanged = false;
	changedStateName = "";
	information = "";
	description = "";

	for (auto i = 0; i < source->GetBody()->Count(); i++)
	{		
		auto setting = dynamic_cast<ASTKeyValuePair *>(source->GetBody()->Declaration(i));
		if (setting != 0)
		{
			auto name = setting->GetKey();
			auto value = setting->GetValue();
			
			auto unexpected = true;
			
			if (type == "tcp-ip" || type == "udp-ip")
			{
				if (name == "target-ip")
				{
					unexpected = false;
					auto parsed = false;
					if (value->GetType() == String)
					{
						IPParser parser;
						if (parser.Parse(value->AsString()->GetValue()))
						{
							ip = parser.GetAddress();
							port = parser.GetPort();
							parsed = true;
						}
					}
					
					if (!parsed)
					{
						LogWarning("target-ip should be a string in format \"ip:port\"");
					}					
				}
			}
			else if (type == "com" || type == "usb-com")
			{
				if (name == "port")
				{
					unexpected = false;
					if (value->GetType() == Number)
					{
						port = value->AsNumber()->GetValue();
					}
					else
					{
						LogWarning("port should be a number");
					}
				}
				else if (name == "speed")
				{
					unexpected = false;
					if (value->GetType() == Number)
					{
						speed = value->AsNumber()->GetValue();
					}
					else
					{
						LogWarning("speed should be a number");
					}
				}
				else if (name == "character-size")
				{
					unexpected = false;					
					if (value->GetType() == Number)
					{
						characterSize = value->AsNumber()->GetValue();						
					}
					else
					{
						LogWarning("character-size should be a number");
					}
				}
				else if (name == "parity")
				{
					unexpected = false;
					auto parsed = false;
					if (value->GetType() == Symbol)
					{
						parsed = true;
						auto string = value->AsString()->GetValue();
						if (string == "even")
						{
							parity = Even;							
						}
						else if (string == "odd")
						{
							parity = Odd;							
						}
						else if (string == "none")
						{
							parity = None;							
						}
						else
						{
							parsed = false;
						}
					}
					if (!parsed)
					{
						LogWarning("parity should be even, odd or none");
					}
				}
			}
			else if (type == "socket")
			{
				if (name == "file")
				{
					unexpected = false;
					if (value->GetType() == String && value->AsString()->GetValue().size() > 2)
					{
						socketFile = value->AsString()->GetValue();
						socketFile = socketFile.substr(1, socketFile.size() - 2);
					}
					else
					{	
						LogWarning("file should be a non-empty string");	
					}
				}
			}			

			if (name == "query-period")
			{
				unexpected = false;
				if (value->GetType() == Number)
				{
					queryPeriod = value->AsNumber()->GetValue();
				}
				else
				{
					LogWarning("query-period should be a number");
				}
			}
			else if (name == "timeout")			
			{
				unexpected = false;
				if (value->GetType() == Number)
				{
					timeout = value->AsNumber()->GetValue();
				}
				else
				{
					LogWarning("timeout should be a number");
				}
			}
			else if (name == "case-sensitive")			
			{
				unexpected = false;
				auto parsed = true;
				if (value->GetType() == Symbol)
				{					 
					if (value->AsString()->GetValue() == "true")
					{
						caseSensitive = true;
					}
					else if (value->AsString()->GetValue() == "false")
					{
						caseSensitive = false;
					}
					else
					{
						parsed = false;
					}
				}
				
				if (!parsed)
				{
					LogWarning("case-sensitive should be true or false");
				}
			}
			else if (name == "description")
			{
				unexpected = false;
				description = std::string(value->AsString()->GetValue());
			}

			if (unexpected)
			{
				LogWarning("Unexpected setting: " + name);
			}
		}

		auto query = dynamic_cast<ASTQuery *>(source->GetBody()->Declaration(i));
		if (query != 0)
		{
			if (this->query.empty())
			{
				this->query.push_back(new ScopeChangeOperation(this, true));
				for (auto i = 0; i < query->GetStatements()->Count(); i++)
				{
					auto statement = query->GetStatements()->GetStatement(i);
					this->query.push_back(CreateOperation(statement));
				}
				this->query.push_back(new ScopeChangeOperation(this, false));
			}
			else
			{
				LogWarning("Query is defined more than once");
			}
		}

		auto command = dynamic_cast<ASTCommand *>(source->GetBody()->Declaration(i));
		if (command != 0)
		{
			auto commandName = command->GetName();
			if (commands.find(commandName) == commands.end())
			{
				CommandDef commandDef;
				for (auto i = 0; i < command->ArgumentsCount(); i++)
				{
					commandDef.Arguments.push_back(command->GetArgument(i)->AsString()->GetValue());
				}

				for (auto i = 0; i < command->GetStatements()->Count(); i++)
				{
					auto statement = command->GetStatements()->GetStatement(i);
					commandDef.Operations.push_back(CreateOperation(statement));
				}

				commandDef.Operations.push_back(new ScopeChangeOperation(this, false));
				commands[commandName] = commandDef;
			}
			else
			{
				LogWarning("Command " + commandName + " is defined more than once");
			}
		}
	}
	
	std::string description = "Protocol " + name + ": ";
	link = 
		type == "tcp-ip" ? (Link *) new TcpLink(description, ip, port) :
		type == "udp-ip" ? (Link *) new TcpLink(description, ip, port, true) :
		type == "com" ? (Link *) new ComLink(description, port, speed, characterSize, parity, false) :
                type == "usb-com" ? (Link *) new ComLink(description, port, speed, characterSize, parity, true) :
		type == "socket" ? (Link *) new SocketLink(description, socketFile) :
			0;
	
	if (link == 0)
	{
		LogError("Protocol type should be one of tcp-ip, com, usb-com or socket");
	}
}

Connection::~Connection()
{
	if (link != 0)
	{
		delete link;
	}		
	
	for (auto i = 0u; i < query.size(); i++)
	{
		delete query[i];
	}
	
	for (auto i = commands.begin(); i != commands.end(); i++)
	{
		auto command = i->second;
		for (auto j = 0u; j < command.Operations.size(); j++)
		{
			delete command.Operations[j];
		}
	}	
}

Operation *Connection::CreateOperation(ASTStatement *statement)
{
	auto stateChange = dynamic_cast<ASTChangeState *>(statement);
	if (stateChange != 0)
	{			
		auto value = stateChange->GetValue();				
		return new StateChangeOperation(this, stateChange->GetState(), 
			value->GetType() == ASTValueType::Number ?
				IntToString(value->AsNumber()->GetValue()): 
				value->AsString()->GetValue());
	}

	auto description = dynamic_cast<ASTCommandDescription *>(statement);
	if (description != 0)
	{
		auto value = new Message(description->GetValue());
		LogInfo (value->ToString());
		return new CommandDescription(value);
	}

	auto shortdescription = dynamic_cast<ASTCommandShortDescription *>(statement);
		if (shortdescription != 0)
		{
			auto value = new Message(shortdescription->GetValue());
			LogInfo (value->ToString());
			return new CommandShortDescription(value);
		}

	auto send = dynamic_cast<ASTSend *>(statement);
	if (send != 0)
	{				
		auto message = new Message(send->GetValue());
		LogInfo(message->ToString());
		//return new SendOperation(this, message);
		//TODO: v1.1 Changed send operation principals (look up .h)
		auto destination = send->GetDestination();
		return new SendOperation(connections, message, destination);
	}
								
	auto receive = dynamic_cast<ASTReceive *>(statement);
	if (receive != 0)
	{			
		auto operation = new ReceiveOperation(this);
		for (auto i = 0; i < receive->Count(); i++)
		{
			auto branch = receive->GetBranch(i);
			auto value = branch->GetValue();			
						
			auto message = new Message(value);
			LogInfo(message->ToString());			
			auto operationBranch = new OperationBranch(message);
			for (auto j = 0; j < branch->GetStatements()->Count(); j++)
			{
				auto statement = branch->GetStatements()->GetStatement(j);
				operationBranch->AddOperation(
					CreateOperation(statement));
			}			
			
			bool isTimeout = 
				value->GetType() == Symbol &&
				value->AsString()->GetValue() == "timeout";
			operation->AddBranch(operationBranch, isTimeout);
		}
		return operation;
	}

	return 0;
}

bool Connection::GetValue(std::string name, unsigned int &value)
{
	for (auto i = scopeStack.size() - 1; i < scopeStack.size(); i++)
	{
		auto level = scopeStack[i];
		auto index = level.find(name);
		if (index != level.end())
		{
			value = index->second;
			return true;
		}
	}
	return false;
}

void Connection::SetValue(std::string name, unsigned int value)
{
	if (!scopeStack.empty())
	{
		for (auto i = scopeStack.size() - 1; i < scopeStack.size(); i++)
		{			
			auto level = scopeStack[i];
			if (level.find(name) != level.end())
			{
				return;
			}
		}		
		scopeStack.back()[name] = value;
	}
}

void Connection::Bind(Message *message)
{
	auto value = 0u;
	for (auto j = 0; j < message->GetNamesCount(); j++)
	{		
		auto name = message->GetName(j);
		if (GetValue(name, value))
		{
			message->Bind(name, value);
		}
	}
}

void Connection::ChangeState(std::string stateName, std::string newValue)
{	
	stateChanged = true;	
	auto number = 0u;
	if (newValue.size() > 0)
	{
		
		if (newValue[0] == '"')
		{
			newValue = newValue.substr(1, newValue.size() - 1);
		}
		else if (isupper(newValue[0]) && this->GetValue(newValue, number))
		{
			newValue = IntToString(number);
		}		 
	}

	auto index = state.find(stateName);
	if (index != state.end())
	{		
		if (index->second == newValue)
		{		
			stateChanged = false;
		}	
	}

	if (stateChanged)
	{
		state[stateName] = newValue;
		changedStateName = stateName;
		LogInfo(stateName + " changed to " + newValue);				
	}
}

void Connection::CancelOperations()
{
	operations.clear();
	scopeStack.clear();
}

void Connection::LogInfo(std::string text)
{
	Log::Info("Protocol " + name + ": " + text);
}

void Connection::LogWarning(std::string text)
{
	Log::Warning("Protocol " + name + ": " + text);
}

void Connection::LogError(std::string text)
{
	Log::Error("Protocol " + name + ": " + text);
}

std::string Connection::GetName()
{
	return name;
}

std::string Connection::GetType()
{
	return type;
}

///generate information according of type of connection
std::string Connection::GetInformation()
{

	//TODO потокобезопасность.
	if (information.compare("") == 0 && type != "none")
	{
		auto result = std::string("");
		std::string stringport = std::string("");
		std::string stringspeed = std::string("");
		std::string stringcharacterSize = std::string("");
		std::string stringqueryPeriod = std::string("");

		std::stringstream buffer;

		buffer << port;
		stringport = buffer.str();

		buffer.str( "" ); //Clearing

		buffer << speed;
		stringspeed = buffer.str();

		buffer.str( "" ); //Clearing

		buffer << characterSize;
		stringcharacterSize = buffer.str();

		buffer.str( "" ); //Clearing

		buffer << queryPeriod;
		stringqueryPeriod = buffer.str();

		(type == "tcp-ip" || type == "udp-ip") ? result += "target-ip:\"" + ip + ":" + stringport + "\"":
		type == "com" || type == "usb-com"? result += "port:" + stringport + ",\nspeed:" + stringspeed
				+ "character-size:" + stringcharacterSize :
		type == "socket" ? result += "socket-file:\"" + socketFile + "\"" :
			0;

		result += ",\nquery-period:" + stringqueryPeriod + ",";
		information = result;
	}
	else if (type == "none")
	{
		information = "Description: " + description + ",\n";
	}
	return information;
}

std::vector<std::string> Connection::StateNames()
{
	std::vector<std::string> names;
	for (auto i = state.begin(); i != state.end(); i++)
	{
		names.push_back(i->first);
	}
	return names;
}

std::string Connection::StateNamesString()
{
	std::string names = "";
	for (auto i = state.begin(); i != state.end(); i++)
	{
		names += i->first + ",";
	}
	return names.substr(0, names.size() - 1);
}

std::string Connection::StateValue(std::string stateName)
{
	auto index = state.find(stateName);
	if (index != state.end())
	{
		return index->second;
	}
	else
	{
		return "";
	}
}

bool Connection::StateChanged()
{
	return stateChanged;
}

std::string Connection::ChangedStateName()
{
	return changedStateName;
}

void Connection::Execute(std::string commandName, const std::vector<unsigned int> arguments)
{
	if (!blocked)
	{
		auto commandPointer = commands.find(commandName);
		if (commandPointer != commands.end())
		{
			scopeStack.push_back(std::map<std::string, unsigned int>());		

			auto command = commandPointer->second;

			for (auto i = 0u; i < command.Arguments.size(); i++)
			{
				if (i < arguments.size())
				{
					SetValue(command.Arguments[i], arguments[i]);
				}
			}
			for (auto i = 0u; i < command.Operations.size(); i++)
			{
				operations.push_back(command.Operations[i]);
			}
			blocked = true;
		}
		else 
		{
			LogWarning("Unknown command: " + commandName);
		}
	}
}

void Connection::Update(long mseconds)
{	
	stateChanged = false;

	if (operations.empty() && 
		mseconds - lastQuery > queryPeriod)
	{
		//LogInfo("Querying the device's state");
		for (auto i = 0u; i < query.size(); i++)
		{
			operations.push_back(query[i]);
		}
		lastQuery = mseconds;
	}
	
	if (!operations.empty())
	{		
		auto operation = operations.front();
		
		if (operation->Execute(mseconds))
		{			
			operations.pop_front();			
		}				
		if (operations.empty())
		{
			blocked = false;
		}
	}	
}

//IPParser

bool IPParser::Parse(std::string source)
{		
	memset(address, 0, 4);
	port = 0;
	
	auto index = 0;
	auto separator = '.';
			
	for (auto i = 1; i < source.size() - 1; i++)
	{
		auto c = source[i];
		if (index < 4)
		{
			if (isdigit(c))
			{
				address[index] = address[index] * 10 + (c - '0');
			}
			else if (c == separator)
			{
				index += 1;
				separator = index < 3 ? '.' : ':';
			}
			else
			{
				return false;
			}
		}						
		else
		{
			if (isdigit(c))
			{
				port = port * 10 + (c - '0');
			}
			else
			{
				return false;
			}
		}
	}
	return true;
}

std::string IPParser::GetAddress()
{
	std::string string = "";
	for (auto i = 0; i < 3; i++)
	{
		string += IntToString(address[i]) + ".";
	}
	string += IntToString(address[3]);
	return string;
}

unsigned short IPParser::GetPort()
{
	return port;
}
