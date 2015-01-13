# -*- coding: utf-8 -*-

from socket import *
import subprocess

popens = [None, None, None, None]

HOST = ''  # Symbolic name meaning all available interfaces
PORT = 54345 # Arbitrary non-privileged port
s = socket(AF_INET, SOCK_STREAM)
s.bind((HOST, PORT))
s.listen(5)
while 1:
    conn, addr = s.accept()
    print('Connected by', addr) # Debug

    while 1:
        data = conn.recv(1024)
        if not data: break
        conn.send(data) # Echo
        print('Data pack:', data) # Debug
        str = data.decode()
        #--volume <integer> sets the level of audio output (between 0 and 1024)
        if 'v1' in str:
            if popens[0]: 
                popens[0].kill()
                popens[0] = None
            if popens[1]: 
                popens[1].kill()
                popens[1] = None
            popens[0] = subprocess.Popen(['C:/VLC/vlc.exe', 'C:\\VLC\\v1', '-I', 'rc', '--rc-host', '192.168.1.170:12889', '-f', '--volume', '256', '--loop'])
        elif 'v2' in str:
            if popens[0]: 
                popens[0].kill()
                popens[0] = None
            if popens[1]: 
                popens[1].kill()
                popens[1] = None
            popens[1] = subprocess.Popen(['C:/VLC/vlc.exe', 'C:\\VLC\\v2', '-I', 'rc', '--rc-host', '192.168.1.170:12889', '-f', '--volume', '256', '--loop'])
        elif 'a1' in str:
            if popens[2]: 
                popens[2].kill()
                popens[2] = None
            if popens[3]: 
                popens[3].kill()
                popens[3] = None
            popens[2] = subprocess.Popen(['C:/VLC/vlc.exe', 'C:\\VLC\\a1', '--extraintf', 'rc', '--rc-host', '192.168.1.170:4290', '--volume', '256', '--loop'])
        elif 'a2' in str:
            if popens[2]: 
                popens[2].kill()
                popens[2] = None
            if popens[3]: 
                popens[3].kill()
                popens[3] = None
            popens[3] = subprocess.Popen(['C:/VLC/vlc.exe', 'C:\\VLC\\a2', '--extraintf', 'rc', '--rc-host', '192.168.1.170:4290', '--volume', '256', '--loop'])
    conn.close()

##import socketserver
##import subprocess
##
##popens = [None, None, None, None]
##
##class MyTCPHandler(socketserver.BaseRequestHandler):
##    """
##    The RequestHandler class for our server.
##
##    It is instantiated once per connection to the server, and must
##    override the handle() method to implement communication to the
##    client.
##    """
##
##    def handle(self):
##        # self.request is the TCP socket connected to the client
##        self.data = self.request.recv(1024)
##        print("%s wrote:" % self.client_address[0])
##        print(self.data)
##        # just send back the same data
##        self.request.send(self.data)
##        str = self.data.decode()
##        #--volume <integer> sets the level of audio output (between 0 and 1024)
##        if 'v1' in str:
##            if popens[0]: popens[0].kill()
##            if popens[1]: popens[1].kill()
##            popens[0] = subprocess.Popen(['C:/VLC/vlc.exe', 'C:\\VLC\\v1', '-I', 'rc', '--rc-host', '192.168.1.101:12889', '-f', '--volume', '256', '-loop'])
##        elif 'v2' in str:
##            if popens[0]: popens[0].kill()
##            if popens[1]: popens[1].kill()
##            popens[1] = subprocess.Popen(['C:/VLC/vlc.exe', 'C:\\VLC\\v2', '-I', 'rc', '--rc-host', '192.168.1.101:12889', '-f', '--volume', '256', '-loop'])
##        elif 'a1' in str:
##            if popens[2]: popens[2].kill()
##            if popens[3]: popens[3].kill()
##            popens[2] = subprocess.Popen(['C:/VLC/vlc.exe', 'C:\\VLC\\a1', '--extraintf', 'rc', '--rc-host', '192.168.1.101:4290', '--volume', '256', '-loop'])
##        elif 'a2' in str:
##            if popens[2]: popens[2].kill()
##            if popens[3]: popens[3].kill()
##            popens[3] = subprocess.Popen(['C:/VLC/vlc.exe', 'C:\\VLC\\a2', '--extraintf', 'rc', '--rc-host', '192.168.1.101:4290', '--volume', '256', '-loop'])
##
##if __name__ == "__main__":
##    HOST, PORT = '', 54345
##
##    # Create the server, binding to HOST on PORT
##    server = socketserver.TCPServer((HOST, PORT), MyTCPHandler)
##
##    # Activate the server; this will keep running until you
##    # interrupt the program with Ctrl-C
##    server.serve_forever()
