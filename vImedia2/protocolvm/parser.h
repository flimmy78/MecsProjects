#ifndef __parser__
#define __parser__

#include "stream.h"
#include "ast.h"

class Parser
{
    private:
        Stream *stream;		        
		std::vector<AST *> astStack;
		std::vector<int> garbageStack;
		
		void PushState();
		
		bool Check(AST *ast);
		AST *Get();
		AST *Failure();
		AST *Success(AST *result);
		
		AST *ParseReturn(AST *ast);
        AST *ParseKeyword(std::string keyword);
		AST *ParseID(bool symbol, bool allowBitCount = false);
        AST *ParseSymbol();
        AST *ParseVar(bool allowBitCount = false);		
		AST *ParseNumber(bool allowBitCount = false);
		AST *ParseString();
        		
		AST *ParseBitBlockPart();
		AST *ParseBitBlock();		
		AST *ParseMessageValue();
		
		AST *ParseStateChangeStatement();		
		AST *ParseSendStatement();
		AST *ParseCommandDescriptionStatement();
		AST *ParseCommandShortDescriptionStatement();
		AST *ParseReceiveBranch();
		AST *ParseReceiveStatement();		
		AST *ParseStatement();		
		AST *ParseStatementBlock(bool withOpeningBracket = true);
		
		AST *ParseInterface(bool query);
		AST *ParseQuery();
		AST *ParseCommand();
		AST *ParseSetting();
		AST *ParseDeclaration();
		
		AST *ParseHeader();
        AST *ParseBody();	
        bool errorsymbols;
    public:		
        AST *Parse();
        Parser(Stream *stream);
        ~Parser();
};

#endif // __parser__
