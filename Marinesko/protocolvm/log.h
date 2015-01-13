#ifndef __log__
#define __log__

#include <fstream>

long GetmSeconds();

class Log 
{
	private: 
		static Log *currentLog;
		std::ofstream *stream;
		
		static void WriteIfOpen(std::string text);
		void Write(std::string text);
		Log(std::string file);
		~Log();
	public:
		static void Info(std::string text);
		static void Warning(std::string text);
		static void Error(std::string text);		
		
		static void Debug(unsigned int value);
		
		static void Start(std::string file);
		static void End();
};

std::string IntToString(int value);
unsigned int StringToInt(std::string);

#endif // __log__
