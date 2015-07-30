#include<stdio.h>
#include <vector>
#include<string>
#include<cstring>
#include<sys/socket.h>
#include <algorithm>
#include<arpa/inet.h> //inet_addr
#include<unistd.h>


inline bool cntrl(char c){
    return std::iscntrl(c);// == '\n';
}

inline bool notcntrl(char c){
    return !std::iscntrl(c);
}

//break a sentence into words
std::vector<std::string> splitcontrol(const std::string& s){
    typedef std::string::const_iterator iter;
    std::vector<std::string> ret;
    iter i = s.begin();
    while(i!=s.end()){
        i = std::find_if(i, s.end(), notcntrl); // find the beginning of a word
        iter j= std::find_if(i, s.end(), cntrl); // find the end of the same word
        if(i!=s.end()){
            ret.push_back(std::string(i, j)); //insert the word into vector
            i = j; // repeat 1,2,3 on the rest of the line.
        }
    }
    return ret;
}


inline bool space(char c){
    return std::isspace(c);
}

inline bool notspace(char c){
    return !std::isspace(c);
}

//break a sentence into words
std::vector<std::string> split(const std::string& s){
    typedef std::string::const_iterator iter;
    std::vector<std::string> ret;
    iter i = s.begin();
    while(i!=s.end()){
        i = std::find_if(i, s.end(), notspace); // find the beginning of a word
        iter j= std::find_if(i, s.end(), space); // find the end of the same word
        if(i!=s.end()){
            ret.push_back(std::string(i, j)); //insert the word into vector
            i = j; // repeat 1,2,3 on the rest of the line.
        }
    }
    return ret;
}

int getTemp(std::string data)
{
    std::vector<std::string> columns = split(data);
    int i_dec = atoi(columns[7].c_str());
    return i_dec;
}


int main(int argc , char *argv[])
{
    int WarningTemp;
    if (argc == 1)
        WarningTemp = 38;
    else
    {
        WarningTemp = atoi(argv[1]);
    }

    int socket_desc;
    struct sockaddr_in server;
    char *commandGetInfo , server_reply[2000], *commandSetBrightnessToMin, *commandPowerOff;

    //Create socket
    socket_desc = socket(AF_INET , SOCK_STREAM , 0);
    if (socket_desc == -1)
    {
        printf("Could not create socket");
    }

    server.sin_addr.s_addr = inet_addr("127.0.0.1");
    server.sin_family = AF_INET;
    server.sin_port = htons( 4352 );

    //Connect to remote server
    if (connect(socket_desc , (struct sockaddr *)&server , sizeof(server)) < 0)
    {
        puts("connect error");
        return 1;
    }

    //Send some data
    commandGetInfo = "(LST+TILS?)\r";
    commandSetBrightnessToMin = "(CCM+BRTM ECON)\r";
    commandPowerOff = "(PWR 0)\r";
    if( send(socket_desc , commandGetInfo , strlen(commandGetInfo) , 0) < 0)
    {
        puts("Send failed");
        return 1;
    }
    puts("Data Send\n");

    //Receive a reply from the server
    if( recv(socket_desc, server_reply , 2000 , 0) < 0)
    {
        puts("recv failed");
    }
    std::string str(server_reply);
    std::vector<std::string> v = splitcontrol(str);
    v.erase(v.begin());
    v.erase(v.begin());

    int iMaxTemp = 0;
    for (int i =0; i < v.size(); i++)
    {
        int iTemp = getTemp(v[i]);
        if (iTemp > iMaxTemp)
            iMaxTemp = iTemp;
    }

    if (iMaxTemp == WarningTemp)
        send(socket_desc , commandSetBrightnessToMin , strlen(commandSetBrightnessToMin) , 0);
    else if (iMaxTemp > WarningTemp)
        send(socket_desc , commandPowerOff , strlen(commandPowerOff) , 0);
    close(socket_desc);
    return 0;
}
