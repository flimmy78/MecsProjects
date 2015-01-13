#include "ast.h"

#include <string>

//Utils

template <class T> 
std::string ToStringMany(std::string name, std::vector<T *> items)
{
	std::string string = name + "(";
	
	for (auto i = 0; i < items.size(); i++)
	{
		string += items[i]->ToString() +
			(i < items.size() - 1 ? ", " : "");
	}
	
	return string + ")";
}

//AST

AST *AST::Error = new AST();
AST *AST::Success = new AST();

void AST::Delete(AST *ast)
{
	if (ast != Error && ast != Success)
	{
		delete ast;
	}	
}

std::string AST::ToString()
{
	return "AST";
}

//ASTProtocol

ASTProtocol::ASTProtocol(ASTKeyValuePair *header, ASTContent *body)
{
	this->header = header;
	this->body = body;
}

ASTProtocol::~ASTProtocol()
{
	Delete(header);
	Delete(body);
}

std::string ASTProtocol::GetName()
{
	return header->GetKey();
}

std::string ASTProtocol::GetType()
{
	return header->GetValue()->AsString()->GetValue();
}

ASTContent *ASTProtocol::GetBody()
{
	return body;
}

std::string ASTProtocol::ToString()
{
	return "Protocol(" + body->ToString() + ")";
}

//ASTContent

ASTContent::ASTContent(std::vector<ASTDeclaration *> &declarations)
{
	for (auto i = declarations.size() - 1; i < declarations.size(); i--)
	{
		this->declarations.push_back(declarations[i]);
	}	
}

ASTContent::~ASTContent()
{
	for (auto i = 0u; i < declarations.size(); i++)
	{
		Delete(declarations[i]);
	}
}

int ASTContent::Count()
{
	return declarations.size();
}

ASTDeclaration *ASTContent::Declaration(int i)
{
	return declarations[i];
}

std::string ASTContent::ToString()
{
	return ToStringMany("Content", declarations);	
}

//ASTValue 

ASTString *ASTValue::AsString()
{
	return (ASTString *)this;
}

ASTNumber *ASTValue::AsNumber()
{
	return (ASTNumber *)this;
}

ASTBitBlock *ASTValue::AsBitBlock()
{
	return (ASTBitBlock *)this;
}

std::string ASTValue::ToString()
{
	return "Value";
}

//ASTString

ASTString::ASTString(std::string value, int bitCount)
{
	this->value = value;
	this->bitCount = bitCount;
}

std::string ASTString::GetValue()
{
	return value;	
}

int ASTString::GetBitCount()
{
	return bitCount;
}

ASTValueType ASTString::GetType()
{
	return 
		islower(value[0]) ? ASTValueType::Symbol :
		isupper(value[0]) ? ASTValueType::Variable :
							ASTValueType::String;
}

//ASTNumber

ASTNumber::ASTNumber(unsigned int value, int bitCount)
{
	this->value = value;
	this->bitCount = bitCount;
}

unsigned int ASTNumber::GetValue()
{
	return value;	
}

int ASTNumber::GetBitCount()
{
	return bitCount;
}

ASTValueType ASTNumber::GetType()
{
	return ASTValueType::Number;
}

//ASTBitBlock

ASTBitBlock::ASTBitBlock(std::vector<ASTValue *> &items)
{
	for (auto i = items.size() - 1; i < items.size(); i--)
	{
		this->items.push_back(items[i]);
	}
}

ASTBitBlock::~ASTBitBlock()
{
	for (auto i = 0u; i < items.size(); i++)
	{
		Delete(items[i]);
	}
}

int ASTBitBlock::Count()
{
	return items.size();
}

ASTValue *ASTBitBlock::GetItem(int i)
{
	return items[i];
}

ASTValueType ASTBitBlock::GetType()
{
	return ASTValueType::BitBlock;
}

//ASTSend

ASTSend::ASTSend(ASTValue *value, ASTString* destination)
{
	this->value = value;
	this->destination = destination->GetValue();
}

ASTValue *ASTSend::GetValue()
{
	return value;
}

std::string ASTSend::GetDestination()
{
        return destination;
}

ASTSend::~ASTSend()
{
	Delete(value);
}

std::string ASTSend::ToString()
{
	return "Send " + destination + " (" + value->ToString() + ")";
}

//ASTCommandDescription
ASTCommandDescription::ASTCommandDescription(ASTValue* value)
{
	this->value = value;
}

ASTValue *ASTCommandDescription::GetValue()
{
	return this->value;
}

ASTCommandDescription::~ASTCommandDescription()
{
	Delete(value);
}

std::string ASTCommandDescription::ToString()
{
	return "Description(" + this->value->ToString() + ")";
}

//ASTCommandShortDescription
ASTCommandShortDescription::ASTCommandShortDescription(ASTValue* value)
{
	this->value = value;
}

ASTValue *ASTCommandShortDescription::GetValue()
{
	return this->value;
}

ASTCommandShortDescription::~ASTCommandShortDescription()
{
	Delete(value);
}

std::string ASTCommandShortDescription::ToString()
{
	return "ShortDescription(" + this->value->ToString() + ")";
}

//ASTReceiveBranch

ASTReceiveBranch::ASTReceiveBranch(ASTValue *value, ASTStatementBlock *statements)
{
	this->value = value;
	this->statements = statements;
}

ASTReceiveBranch::~ASTReceiveBranch()
{
	Delete(value);
	Delete(statements);
}

ASTValue *ASTReceiveBranch::GetValue()
{
	return value;	
}

ASTStatementBlock *ASTReceiveBranch::GetStatements()
{
	return statements;
}

std::string ASTReceiveBranch::ToString()
{
	return "Branch(" + value->ToString() + ")";
}

//ASTReceive

ASTReceive::ASTReceive(std::vector<ASTReceiveBranch *> &branches)
{
	for (auto i = branches.size() - 1; i < branches.size(); i--)
	{
		this->branches.push_back(branches[i]);
	}
}

ASTReceive::~ASTReceive()
{
	for (auto i = 0u; i < branches.size(); i++)
	{
		Delete(branches[i]);
	}
}

int ASTReceive::Count()
{
	return branches.size();	
}

ASTReceiveBranch *ASTReceive::GetBranch(int i)
{
	return branches[i];
}

std::string ASTReceive::ToString()
{
	return ToStringMany("Receive", branches);
}

//ASTStatementBlock

ASTStatementBlock::ASTStatementBlock(std::vector<ASTStatement *> &statements)
{
	for (auto i = statements.size() - 1; i < statements.size(); i--)
	{
		this->statements.push_back(statements[i]);
	}
}

ASTStatementBlock::~ASTStatementBlock()
{
	for (auto i = 0u; i < statements.size(); i++)
	{
		Delete(statements[i]);
	}
}

int ASTStatementBlock::Count()
{
	return statements.size();
}

ASTStatement *ASTStatementBlock::GetStatement(int i)
{
	return statements[i];
}

std::string ASTStatementBlock::ToString()
{
	return ToStringMany("Statements", statements);
}

//ASTQuery

ASTQuery::ASTQuery(ASTStatementBlock *statements)
{
	this->statements = statements;
}

ASTQuery::~ASTQuery()
{
	Delete(statements);
}

ASTStatementBlock *ASTQuery::GetStatements()
{
	return statements;
}

std::string ASTQuery::ToString()
{
	return "Query(" + statements->ToString() + ")";
}

//ASTCommand

ASTCommand::ASTCommand(ASTString *name, ASTStatementBlock *statements, const std::vector<ASTValue *> &arguments)
{
	this->name = name;
	this->statements = statements;

	for (auto i = arguments.size() - 1; i < arguments.size(); i--)
	{
		this->arguments.push_back(arguments[i]);
	}
}

ASTCommand::~ASTCommand()
{
	Delete(name);
	Delete(statements);
	for (auto i = 0; i < arguments.size(); i++)
	{
		AST::Delete(arguments[i]);
	}
}

int ASTCommand::ArgumentsCount()
{
	return arguments.size();
}

ASTValue *ASTCommand::GetArgument(int i)
{
	return arguments[i];
}

std::string ASTCommand::GetName()
{
	return name->AsString()->GetValue();
}

ASTStatementBlock *ASTCommand::GetStatements()
{
	return statements;	
}

std::string ASTCommand::ToString()
{
	return "Command(" + statements->ToString() + ")";
}

//ASTChangeState

ASTChangeState::ASTChangeState(ASTString *stateName, ASTValue *value)
{
	this->stateName = stateName;
	this->value = value;
}

ASTChangeState::~ASTChangeState()
{
	Delete(stateName);
	Delete(value);
}

std::string ASTChangeState::GetState()
{
	return stateName->AsString()->GetValue();
}

ASTValue *ASTChangeState::GetValue()
{
	return value;
}

std::string ASTChangeState::ToString()
{
	return "ChangeState(" + stateName->ToString() + ")";
}

//ASTKeyValuePair

ASTKeyValuePair::ASTKeyValuePair(ASTString *key, ASTValue *value)
{
	this->key = key;
	this->value = value;
}

ASTKeyValuePair::~ASTKeyValuePair()
{
	delete key;
	delete value;
}

std::string ASTKeyValuePair::GetKey()
{	
	return key->GetValue();
}

ASTValue *ASTKeyValuePair::GetValue()
{
	return value;	
}

std::string ASTKeyValuePair::ToString()
{
	return "Assignment(" + key->ToString() + ", " + value->ToString() + ")";
}
