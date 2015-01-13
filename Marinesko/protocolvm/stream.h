#ifndef __stream__
#define __stream__

#include <vector>
#include <fstream>

class Stream
{
	private:
		std::ifstream *file;	
		int position;
		std::vector<int> positionStack;
		
		int GetPosition();
        void SetPosition(int position);
		
		char NextNonWhitespace();
		bool IsWhitespace(char c);
		
		void PrintStack();
    public:
        char NextChar();		
		void SeekNextToken();
		
		void Back();		
		void PushPosition();
        void PopPosition();
		void DropPosition();
		
		bool Eof();
		
		Stream(std::ifstream *file);
		~Stream();
};

#endif // __stream__
