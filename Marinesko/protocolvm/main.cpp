#include "controller.h"
#include "log.h"

#include <fstream>
#include <cstring>
#include <unistd.h>

int BaseMain(int argc, char **argv)
{	
	chdir("/");
	if(fork())/*форкаемся*/
			exit(0);
	setsid();/*отрываемся от управляющего терминала и переходим в
фоновый режим*/

	for (auto i = 1; i < argc; i++)
	{		
		if (strcmp(argv[i], "--log") == 0)
		{
			Log::Start("log.txt");
		}
	}
	try
	{		
		auto file = new std::ifstream("protocols", std::ifstream::in);
		if (!file->is_open())
		{
		  Log::Warning("Could not find the protocols list [local search]");
		  file = new std::ifstream("/protocols", std::ifstream::in);
		}
		if (file->is_open())
		{
			char fileName[1024];
			std::vector<std::string> protocols;
			
			while (!file->eof())
			{
				file->getline(fileName, 1024);				
				
				if (fileName[0] != 0)
				{
					protocols.push_back(std::string(fileName));
				}				
			}

			Controller controller(protocols);
			controller.Run();
		}
		else
		{
			Log::Error("Could not find the protocols list [root dir search]");
		}
	}
	catch (...)
	{
		Log::Error("There was an exception");
	}
	Log::End();
    return 0;
}

int main(int argc, char **argv)
{
	return BaseMain(argc, argv);
}

int wmain(int argc, char **argv)
{
	return BaseMain(argc, argv);
}
