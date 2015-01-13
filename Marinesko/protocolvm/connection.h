#ifndef __connection__
#define __connection__

#include <vector>
#include <list>
#include <map>

#include "ast.h"
#include "link.h"

class Connection;

class Operation
{
	protected:
		Connection *connection;
	public:
		virtual bool Execute(long mseconds) = 0;		

		Operation(Connection *connection);
		virtual ~Operation() {}
};

typedef std::vector<Operation *> OperationStack;
typedef std::list<Operation *> OperationQueue;

class SendOperation: public Operation
{
	private:
		Message *message;
		std::string destination;
		std::map<std::string, Connection*>* connections;
	public:
		virtual bool Execute(long mseconds);
		
		//SendOperation(Connection *connection, Message *message);
		//TODO: v1.1 'SendOperation' now receives pointer to 'connections' from 'Controller' class
		SendOperation(std::map<std::string, Connection*>* connections, Message *message, std::string destination);
		virtual ~SendOperation();
};

class CommandDescription: public Operation
{
	private:
		Message *description;
	public:
		virtual bool Execute(long mseconds);
		CommandDescription(Message *description);
		virtual ~CommandDescription();
		std::string ToString(void);
};

class CommandShortDescription: public Operation
{
	private:
		Message *description;
	public:
		virtual bool Execute(long mseconds);
		CommandShortDescription(Message *description);
		virtual ~CommandShortDescription();
		std::string ToString(void);
};

class StateChangeOperation: public Operation
{
	private:
		std::string state;
		std::string value;
	public:
		virtual bool Execute(long mseconds);
		StateChangeOperation(Connection *connection, std::string state, std::string value);
};

class OperationBranch
{		
	private:	
		Message *value;
		std::vector<Operation *> operations;
	public:
		Message *GetValue();
		int Count();
		Operation *GetOperation(int i);
		
		void AddOperation(Operation *operation);
		
		OperationBranch(Message *value);
		~OperationBranch();
};

class ReceiveOperation: public Operation
{
	private:
		std::vector<OperationBranch *> branches;
		OperationBranch *defaultBranch;
		
		void PushBranch(OperationBranch *branch);
	public:
		virtual bool Execute(long mseconds);
		void AddBranch(OperationBranch *branch, bool timeout = false);
		
		ReceiveOperation(Connection *connection);		
		virtual ~ReceiveOperation();
};

class ScopeChangeOperation: public Operation
{
	private:
		bool newScope;
	public:
		virtual bool Execute(long mseconds);
		
		ScopeChangeOperation(Connection *connnection,  bool newScope);		
};

struct CommandDef
{
	std::vector<std::string> Arguments;
	OperationStack Operations;
};

class Connection 
{		
	private:				
		std::string name;
		std::string type;
		std::string information;
		std::map<std::string, std::string> state;

		int queryPeriod;
		int timeout;
		bool caseSensitive;
		
		long lastQuery;
		
		std::string ip;
		unsigned short port;		
		unsigned int speed;	
		int characterSize;
		Parity parity;
		std::string description;

		std::string socketFile;

		bool blocked;
		bool stateChanged;
		std::string changedStateName;		

		//TODO: v1.1 Now all 'Connection' instances know about each other
		std::map<std::string, Connection*>* connections;
		Link *link;
		OperationQueue operations;
		OperationStack query;
		

		std::vector<std::map<std::string, unsigned int> > scopeStack;
		
		void LogInfo(std::string text);
		void LogWarning(std::string text);
		void LogError(std::string text);
		Operation *CreateOperation(ASTStatement *statement);
		
		bool GetValue(std::string name, unsigned int &value);
		void SetValue(std::string name, unsigned int value);			
		void Bind(Message *message);

		void ChangeState(std::string stateName, std::string newValue);
		void CancelOperations();
	friend class StateChangeOperation;
	friend class SendOperation;
	friend class ReceiveOperation;
	friend class ScopeChangeOperation;
	public:		
		void Update(long mseconds);
		void Execute(std::string commandName, const std::vector<unsigned int> arguments);		

		std::string GetName();
		std::string GetType();
		std::string GetInformation();
		
		std::vector<std::string> StateNames();
		std::string StateNamesString();
		std::string StateValue(std::string stateName);

		bool StateChanged();
		std::string ChangedStateName();
		
		//TODO: v1.1 Changed constructor to receive 'connections'
		Connection(ASTProtocol *source, std::map<std::string, Connection*>* connections);
		~Connection();	
		std::map<std::string, CommandDef> commands;
};

class IPParser
{
	private:
		BYTE address[4];
		unsigned short port;
	public:
		std::string GetAddress();
		unsigned short GetPort();
		bool Parse(std::string source);
};

#endif // __connection__
