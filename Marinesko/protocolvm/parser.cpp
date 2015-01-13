#include <iostream>
#include <vector>
#include <cctype>
#include <string>

#include "parser.h"

Parser::Parser(Stream *stream) {
	this->stream = stream;
	if (stream == 0) {
		throw("No stream to read from");
	}
	errorsymbols = false;
}

Parser::~Parser() {
	delete stream;
	for (auto i = 0u; i < astStack.size(); i++) {
		astStack[i]->Delete(astStack[i]);
	}
}

void Parser::PushState() {
	stream->PushPosition();
	garbageStack.push_back(astStack.size());
}

AST *Parser::Failure() {
	stream->PopPosition();
	unsigned int garbage = garbageStack.back();
	garbageStack.pop_back();
	for (auto i = garbage; i < astStack.size(); i++) {
		auto item = astStack.back();
		astStack.pop_back();
		item->Delete(item);
	}
	return AST::Error;
}

AST *Parser::Success(AST *result) {
	stream->DropPosition();
	return result;
}

AST *Parser::Parse() {
	if (Check(ParseHeader()) && Check(ParseBody())) {
		auto body = (ASTContent *) Get();
		auto header = (ASTKeyValuePair *) Get();
		return new ASTProtocol(header, body);
	} else {
		return AST::Error;
	}
}

bool Parser::Check(AST *ast) {
	if (ast != AST::Success && ast != AST::Error) {
		astStack.push_back(ast);
	}
	return ast != AST::Error;
}

AST *Parser::Get() {
	if (astStack.size() > 0) {
		auto result = astStack.back();
		astStack.pop_back();
		return result;
	} else {
		return AST::Error;
	}
}

AST *Parser::ParseHeader() {
	if (Check(ParseKeyword("protocol")) && Check(ParseVar())
			&& Check(ParseKeyword(":")) && Check(ParseSymbol())) {
		auto value = (ASTValue *) Get();
		auto key = (ASTString *) Get();
		return new ASTKeyValuePair(key, value);
	} else {
		return AST::Error;
	}
}

AST *Parser::ParseBody() {
	auto error = false;
	auto count = 0;
	while (!(stream->Eof() || error || errorsymbols)) {

		error = !Check(ParseDeclaration());
		count += 1;
	}

	if (!error) {
		std::vector<ASTDeclaration *> declarations;
		for (auto i = 0; i < count; i++) {
			declarations.push_back((ASTDeclaration *) Get());
		}
		auto result = new ASTContent(declarations);
		return result;
	} else {
		return AST::Error;
	}
}

AST *Parser::ParseStateChangeStatement() {
	PushState();
	if (Check(ParseKeyword("set")) && Check(ParseSymbol())
			&& Check(ParseBitBlockPart())) {
		auto value = (ASTValue *) Get();
		auto state = (ASTString *) Get();
		return Success(new ASTChangeState(state, value));
	} else {
		return Failure();
	}
}

AST *Parser::ParseBitBlockPart() {
	if (Check(ParseNumber(true)) || Check(ParseString()) || Check(ParseSymbol())
			|| Check(ParseVar(true))) {
		return Get();
	} else {
		return AST::Error;
	}
}

AST *Parser::ParseBitBlock() {
	PushState();
	if (Check(ParseKeyword("("))) {
		auto count = 0;
		while (!Check(ParseKeyword(")"))) {
			if (Check(ParseString()) || Check(ParseNumber(true))
					|| Check(ParseSymbol()) || Check(ParseVar(true))) {
				count += 1;
			} else {
				return Failure();
			}
		}

		std::vector<ASTValue *> items;
		for (int i = 0; i < count; i++) {
			items.push_back((ASTValue *) Get());
		}
		return Success(new ASTBitBlock(items));
	}

	return Failure();
}

AST *Parser::ParseMessageValue() {
	if (Check(ParseBitBlockPart()) || Check(ParseBitBlock())) {
		return Get();
	} else {
		return AST::Error;
	}
}

AST *Parser::ParseReceiveBranch() {
	if (Check(ParseMessageValue()) && Check(ParseStatementBlock())) {
		auto statements = (ASTStatementBlock *) Get();
		auto value = (ASTValue *) Get();
		return new ASTReceiveBranch(value, statements);
	} else {
		return AST::Error;
	}
}

AST *Parser::ParseReceiveStatement() {
	PushState();
	if (Check(ParseKeyword("receive")) && Check(ParseKeyword("{"))) {
		auto count = 0;
		while (!Check(ParseKeyword("}"))) {
			if (Check(ParseReceiveBranch())) {
				count += 1;
			} else {
				return Failure();
			}
		}

		std::vector<ASTReceiveBranch *> branches;
		for (auto i = 0; i < count; i++) {
			branches.push_back((ASTReceiveBranch *) Get());
		}

		return new ASTReceive(branches);
	} else {
		return Failure();
	}
}

AST *Parser::ParseSendStatement() {
	PushState();
	/*
	 if (Check(ParseKeyword("send")) &&
	 Check(ParseMessageValue()))
	 {
	 auto value = (ASTValue *)Get();
	 return Success(new ASTSend(value));
	 }
	 else
	 {
	 return Failure();
	 }
	 */
	//TODO: v1.1 New send statement parser: destination HAVE TO be included now
	if (Check(ParseKeyword("send")) && Check(ParseVar())
			&& Check(ParseMessageValue())) {
		auto value = (ASTValue *) Get();

		auto destination = (ASTString *) Get();
		return Success(new ASTSend(value, destination));
	} else {
		return Failure();
	}
}

AST *Parser::ParseCommandDescriptionStatement() {

	PushState();
	if (Check(ParseKeyword("Description"))
			&& Check(ParseMessageValue())) {
		auto value = (ASTValue *) Get();
		return Success(new ASTCommandDescription(value));
	} else {
		return Failure();
	}
}

AST *Parser::ParseCommandShortDescriptionStatement() {

	PushState();
	if (Check(ParseKeyword("ShortDescription"))
			&& Check(ParseMessageValue())) {
		auto value = (ASTValue *) Get();
		return Success(new ASTCommandShortDescription(value));
	} else {
		return Failure();
	}
}

AST *Parser::ParseStatement() {
	if (Check(ParseStateChangeStatement()) || Check(ParseSendStatement()) || Check(ParseCommandDescriptionStatement())
			|| Check(ParseCommandShortDescriptionStatement())
			|| Check(ParseReceiveStatement())) {
		return Get();
	} else {
		return AST::Error;
	}
}

AST *Parser::ParseStatementBlock(bool withOpeningBracket) {
	if (!withOpeningBracket || Check(ParseKeyword("{"))) {
		auto count = 0;
		while (!Check(ParseKeyword("}"))) {
			if (Check(ParseStatement())) {
				count += 1;
			} else {
				return AST::Error;
			}
		}

		std::vector<ASTStatement *> statements;
		for (int i = 0; i < count; i++) {
			statements.push_back((ASTStatement *) Get());
		}

		return new ASTStatementBlock(statements);
	} else {
		return AST::Error;
	}
}

AST *Parser::ParseCommand() {
	if (Check(ParseKeyword("command")) && Check(ParseSymbol())) {
		auto count = 0;
		while (!Check(ParseKeyword("{"))) {
			if (Check(ParseID(false, true))) {
				count += 1;
			} else {
				return AST::Error;
			}
		}

		std::vector<ASTValue *> arguments;
		for (auto i = 0; i < count; i++) {
			arguments.push_back((ASTValue *) Get());
		}

		if (Check(ParseStatementBlock(false))) {
			auto statements = (ASTStatementBlock *) Get();
			auto name = (ASTString *) Get();

			return new ASTCommand(name, statements, arguments);
		} else {
			return AST::Error;
		}
	} else {
		return AST::Error;
	}
}

AST *Parser::ParseQuery() {
	if (Check(ParseKeyword("query")) && Check(ParseStatementBlock())) {
		auto statements = (ASTStatementBlock *) Get();
		return new ASTQuery(statements);
	} else {
		return AST::Error;
	}
}

AST *Parser::ParseSetting() {
	PushState();
	if (Check(ParseSymbol()) && Check(ParseKeyword(":"))
			&& (Check(ParseSymbol()) || Check(ParseNumber())
					|| Check(ParseString()))) {
		auto value = (ASTValue *) Get();
		auto key = (ASTString *) Get();
		return Success(new ASTKeyValuePair(key, value));
	} else {
		return Failure();
	}
}

AST *Parser::ParseDeclaration() {
	if (Check(ParseSetting()) || Check(ParseQuery()) || Check(ParseCommand())) {
		return Get();
	} else {
		return AST::Error;
	}
}

//Lexers

AST *Parser::ParseKeyword(std::string keyword) {
	PushState();
	for (auto i = keyword.begin(); i != keyword.end(); i++) {
		unsigned char a = stream->NextChar();
		if (a == 255) {
			errorsymbols = true;
			return Success(AST::Success);
		}
		if (*i != a) {
			return Failure();
		}
	}

	stream->SeekNextToken();

	return Success(AST::Success);
}

AST *Parser::ParseNumber(bool allowBitCount) {
	PushState();
	unsigned int value = 0;

	auto next = stream->NextChar();
	if (!isdigit(next)) {
		return Failure();
	}

	while (isdigit(next)) {
		value = value * 10 + (next - '0');
		next = stream->NextChar();
	}

	stream->Back();

	int bitCount = 32;
	if (allowBitCount && Check(ParseKeyword(":")) && Check(ParseNumber())) {
		auto number = (ASTNumber *) Get();
		bitCount = std::min(number->GetValue(), 32u);
	}

	stream->SeekNextToken();

	return Success(new ASTNumber(value, bitCount));
}

AST *Parser::ParseString() {
	PushState();
	std::string text = "";

	auto next = stream->NextChar();
	if (next != '"') {
		return Failure();
	}

	next = stream->NextChar();
	while (next != '"') {
		text.append(1, next);
		next = stream->NextChar();
		if (stream->Eof()) {
			return Failure();
		}
	}

	stream->SeekNextToken();
	return Success(new ASTString('"' + text + '"'));
}

/*
 // v1.0 ParseID
 AST *Parser::ParseID(bool symbol, bool allowBitCount)
 {
 PushState();
 std::string text = "";

 auto next = stream->NextChar();
 if (symbol && !islower(next) ||
 !symbol && !isupper(next))
 {
 return Failure();
 }
 text.append(1, next);

 next = stream->NextChar();
 while (symbol && (islower(next) || next == '-') ||
 !symbol && isalpha(next))
 {
 text.append(1, next);
 next = stream->NextChar();
 }

 stream->Back();

 auto bitCount = symbol ? 8 : 32;
 if (allowBitCount &&
 Check(ParseKeyword(":")) &&
 Check(ParseNumber()))
 {
 auto number = (ASTNumber *)Get();
 bitCount = std::min(number->GetValue(), 32u);
 }

 stream->SeekNextToken();

 return Success(new ASTString(text, bitCount));
 }
 */

//TODO: v1.11 ParseID now should understand numbers into strings parsed
AST *Parser::ParseID(bool symbol, bool allowBitCount) {
	PushState();
	std::string text = "";

	auto next = stream->NextChar();
	if ((symbol && !islower(next)) || (!symbol && !isupper(next))
			|| isdigit(next)) {
		return Failure();
	}
	text.append(1, next);

	next = stream->NextChar();
	while ((symbol && (islower(next) || next == '-')) || (!symbol && isalnum(next))) {
		text.append(1, next);
		next = stream->NextChar();
	}

	stream->Back();

	auto bitCount = symbol ? 8 : 32;
	if (allowBitCount && Check(ParseKeyword(":")) && Check(ParseNumber())) {
		auto number = (ASTNumber *) Get();
		bitCount = std::min(number->GetValue(), 32u);
	}

	stream->SeekNextToken();

	return Success(new ASTString(text, bitCount));
}

AST *Parser::ParseVar(bool allowBitCount) {
	return ParseID(false, allowBitCount);
}

AST *Parser::ParseSymbol() {
	return ParseID(true);
}

AST *Parser::ParseReturn(AST *ast) {
	return ast;
}
