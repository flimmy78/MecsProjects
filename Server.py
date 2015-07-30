# -*- coding: utf-8 -*-

from socket import *
import subprocess
import sys

popens = [None, None, None, None]

HOST = ''  # Symbolic name meaning all available interfaces
PORT = 4352 # Arbitrary non-privileged port
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
#	print('Data size:', len(data))
        print('Data pack:', data) # Debug
#        str = data.decode()
        #--volume <integer> sets the level of audio output (between 0 and 1024)       
    conn.close()


