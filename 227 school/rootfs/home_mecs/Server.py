#!/usb/bin/python
# -*- coding: utf-8 -*-

from socket import *
#import subprocess
import os

popens = [None, None, None, None]

HOST = ''  # Symbolic name meaning all available interfaces
PORT = 3002 # Arbitrary non-privileged port
s = socket(AF_INET, SOCK_STREAM)
s.bind((HOST, PORT))
s.listen(5)
while 1:
    conn, addr = s.accept()
    print('Connected by', addr) # Debug

    while 1:
        data = conn.recv(1024)
        if not data: break

        str = data.decode()

        if 'pulse' in str:
			#run /root/oreonremote/enableOrion
			#PIPE = subprocess.PIPE
			#p = subprocess.Popen('/root/oreonremote/enableOrion')
			os.system('/root/pulsedtrS3')        
        elif 'stat' in str:
			conn.send('good\n')
    conn.close()

