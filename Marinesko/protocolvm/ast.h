#ifndef __ast__
#define __ast__

#include <iostream>
#include <vector>

class AST
{
	protected:			
		AST() {}		
		virtual ~AST() {}							
	public:	
		static AST *Error;
		static AST *Success;			
		static void Delete(AST *ast);
		
		virtual std::string ToString();
};

enum ASTValueType 
{
	Number,
	Variable,
	Symbol,
	String,
	BitBlock
};

class ASTString;
class ASTNumber;
class ASTBitBlock;

class ASTValue: public AST 
{
	public: 
		virtual ASTValueType GetType() = 0;		
		ASTString *AsString();
		ASTNumber *AsNumber();
		ASTBitBlock *AsBitBlock();
		
		virtual std::string ToString();
};

class ASTString: public ASTValue
{
	private:
		std::string value;
		int bitCount;
	public:
		virtual ASTValueType GetType();
		std::string GetValue();		
		int GetBitCount();
		ASTString(std::string value, int bitCount = 32);
};

class ASTNumber: public ASTValue
{
	private:
		unsigned int value;
		int bitCount;
	public:
		virtual ASTValueType GetType();
		unsigned int GetValue();
		int GetBitCount();
		ASTNumber(unsigned int value, int bitCount = 32);
};

class ASTBitBlock: public AST
{
	private:
		std::vector<ASTValue *> items;
	protected:
		virtual ~ASTBitBlock();
	public:
		virtual ASTValueType GetType();
		int Count();
		ASTValue *GetItem(int i);
		ASTBitBlock(std::vector<ASTValue *> &items);
};

class ASTStatement: public AST {};

class ASTStatementBlock: public AST 
{
	private:
		std::vector<ASTStatement *> statements;
	protected:
		virtual ~ASTStatementBlock();
	public:
		int Count();
		ASTStatement *GetStatement(int i);
		ASTStatementBlock(std::vector<ASTStatement *> &statements);		
		
		virtual std::string ToString();
};

class ASTSend: public ASTStatement
{
	private:
		ASTValue *value;
		//v1.1 added 'destination' string with getter
		std::string destination;
	protected:
		virtual ~ASTSend();
	public:
		ASTValue *GetValue();
		std::string GetDestination();
		ASTSend(ASTValue* value, ASTString* destination);
		
		virtual std::string ToString();
};

class ASTCommandDescription: public ASTStatement
{
	private:
		ASTValue *value;
	protected:
		virtual ~ASTCommandDescription();
	public:
		ASTValue *GetValue();
		ASTCommandDescription(ASTValue* value);

		virtual std::string ToString();
};

class ASTCommandShortDescription: public ASTStatement
{
	private:
		ASTValue *value;
	protected:
		virtual ~ASTCommandShortDescription();
	public:
		ASTValue *GetValue();
		ASTCommandShortDescription(ASTValue* value);

		virtual std::string ToString();
};

class ASTReceiveBranch: public AST
{
	private:
		ASTValue *value;
		ASTStatementBlock *statements;
	protected:
		virtual ~ASTReceiveBranch();
	public:
		ASTValue *GetValue();
		ASTStatementBlock *GetStatements();
		ASTReceiveBranch(ASTValue *value, ASTStatementBlock *statements);
		
		virtual std::string ToString();
};

class ASTReceive: public ASTStatement
{
	private:
		std::vector<ASTReceiveBranch *> branches;
	protected:
		virtual ~ASTReceive();
	public:
		int Count();
		ASTReceiveBranch *GetBranch(int i);
		ASTReceive(std::vector<ASTReceiveBranch *> &branches);
		
		virtual std::string ToString();
};

class ASTChangeState: public ASTStatement
{
	private:
		ASTString *stateName;
		ASTValue *value;
	protected:
		virtual ~ASTChangeState();
	public:
		std::string GetState();
		ASTValue *GetValue();
		ASTChangeState(ASTString *stateName, ASTValue *value);
		
		virtual std::string ToString();
};

class ASTDeclaration: public AST {};

class ASTKeyValuePair: public ASTDeclaration
{
	private:
		ASTString *key;
		ASTValue *value;
	protected:
		virtual ~ASTKeyValuePair();
	public:
		std::string GetKey();
		ASTValue *GetValue();		
		ASTKeyValuePair(ASTString *key, ASTValue *value);
		
		virtual std::string ToString();
};

class ASTQuery: public ASTDeclaration
{
	private:
		ASTStatementBlock *statements;
	protected:
		virtual ~ASTQuery();
	public:
		ASTStatementBlock *GetStatements();
		ASTQuery(ASTStatementBlock *statements);
		
		virtual std::string ToString();
};	

class ASTCommand: public ASTDeclaration
{
	private:
		ASTStatementBlock *statements;
		ASTString *name;
		std::vector<ASTValue *> arguments;
	protected:
		virtual ~ASTCommand();
	public:
		std::string GetName();
		ASTStatementBlock *GetStatements();		
		int ArgumentsCount();
		ASTValue *GetArgument(int i);
		ASTCommand(ASTString *name, ASTStatementBlock *statements, const std::vector<ASTValue *> &arguments);
		
		virtual std::string ToString();
};

class ASTContent: public AST
{
	private:
		std::vector<ASTDeclaration *> declarations;
	protected:
		virtual ~ASTContent();
	public:
		int Count();
		ASTDeclaration *Declaration(int i);
		ASTContent(std::vector<ASTDeclaration *> &settings);
		
		virtual std::string ToString();
};

class ASTProtocol: public AST
{
	private:
		ASTKeyValuePair *header;
		ASTContent *body;
	protected:
		virtual ~ASTProtocol();
	public:		
		std::string GetName();
		std::string GetType();	
		ASTContent *GetBody();
		ASTProtocol(ASTKeyValuePair *header, ASTContent *body);
		
		virtual std::string ToString();
};

#endif // __ast__
