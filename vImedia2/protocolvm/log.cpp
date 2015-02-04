#include <time.h>
#ifdef _WIN32
	#include <windows.h>
#else
	#include <sys/time.h>
#endif

#include "log.h"

#include <stdlib.h>
#include <string>
#include <sstream>

#ifndef _WIN32	
	bool timerEnabled = false;
	timeval startTime;
#endif

long GetmSeconds()
{	
	#ifndef _WIN32	
		if (!timerEnabled)
		{
			gettimeofday(&startTime, 0);
			gettimeofday(&startTime, 0);
			timerEnabled = true;
			return 0;
		}
		else
		{
			timeval time;
			gettimeofday(&time, 0);	
			return 
				(time.tv_sec - startTime.tv_sec)  * 1000 +
				(time.tv_usec - startTime.tv_usec) / 1000;
		}
	#else		
		return GetTickCount();		
	#endif
}

Log *Log::currentLog = 0;

Log::Log(std::string file)
{
	stream = new std::ofstream(file.c_str(), std::ofstream::out | std::ofstream::app);	
	auto currentTime = time(0);
	std::string timeString(asctime(localtime(&currentTime)));
	Write("\nLog started at " + timeString);
}

Log::~Log()
{
	if (stream->is_open())
	{
		stream->close();
	}	
	delete stream;
}

void Log::Write(std::string text)
{
	if (stream->is_open())
	{
		*stream << text.c_str() << std::endl;
	}	
}

void Log::WriteIfOpen(std::string text)
{
	if (currentLog != 0)
	{
		currentLog->Write(text);
	}
}

void Log::Info(std::string text)
{
	WriteIfOpen("Info: " + text);	
}

void Log::Warning(std::string text)
{
	WriteIfOpen("Warning: " + text);	
}

void Log::Error(std::string text)
{
	WriteIfOpen("Error: " + text);	
}

void Log::Debug(unsigned int value)
{
	WriteIfOpen("Debug: " + IntToString(value));
}

void Log::Start(std::string file)
{
	if (currentLog != 0)
	{
		delete currentLog;
	}
	currentLog = new Log(file);
}

void Log::End()
{
	if (currentLog != 0)
	{
		delete currentLog;
		currentLog = 0;
	}
}

std::string IntToString (int value)
{
	std::ostringstream stream;  
	stream << value;
	return stream.str();
}

unsigned int StringToInt(std::string value)
{
	auto result = 0u;
	for (auto i = 0u; i < value.size(); i++)
	{
		if ('0' <= value[i] && value[i] <= '9')
		{
			result = result * 10 + (value[i] - '0');
		}
		else
		{
			return 0u;
		}
	}
	return result;
}
