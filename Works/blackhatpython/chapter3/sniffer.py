import socket
import os
import struct
from ctypes import *

class IP(Structure):
    _fields_ = [
        ("ihl",           c_uint8, 4),
        ("version",       c_uint8, 4),
        ("tos",           c_uint8),
        ("len",           c_uint16),
        ("id",            c_uint16),
        ("offset",        c_uint16),
        ("ttl",           c_uint8),
        ("protocol_num",  c_uint8),
        ("sum",           c_uint16),
        ("src",           c_uint32),
        ("dst",           c_uint32)
    ]
 
    def __new__(self, socket_buffer=None):
        return self.from_buffer_copy(socket_buffer)
 
    def __init__(self, socket_buffer=None):
        self.protocol_map = {1: "ICMP", 6:"TCP", 17:"UDP"}
        self.src_address = socket.inet_ntoa(struct.pack("<L", self.src))
        self.dst_address = socket.inet_ntoa(struct.pack("<L", self.dst))
 
        try:
            self.protocol = self.protocol_map[self.protocol_num]
        except:
            self.protocol = str(self.protocol_num)
host = "192.168.232.130"
def hexdump(src, length=16):
    result = []
    digits = 4

    s = src[:]
    print(s)
    hexa = " ".join(["%0*X" % (digits, ord(x)) for x in s.decode("ascii",'replace')])
    text = "".join([x if 0x20 <= ord(x) < 0x7F else "." for x in s.decode("ascii",'replace')])
    result.append("%04X   %-*s   %s" % (1, length * (digits + 1), hexa, text))

    print("\n".join(result))        


def main():
    if os.name == "nt":
        socket_protocol = socket.IPPROTO_IP
    else:
        socket_protocol = socket.IPPROTO_ICMP

    sniffer = socket.socket(socket.AF_INET, socket.SOCK_RAW, socket_protocol)

    sniffer.bind((host, 0))

    sniffer.setsockopt(socket.IPPROTO_IP, socket.IP_HDRINCL, 1)

    if os.name == "nt":
        sniffer.ioctl(socket.SIO_RCVALL, socket.RCVALL_ON)

    try:
        while True:
            raw_buffer = sniffer.recvfrom(65536)[0]
            ip_header = IP(raw_buffer[0:20])

            print("Protocol: {} {} -> {}".format(ip_header.protocol, ip_header.src_address,ip_header.dst_address))
            #hexdump(raw_buffer)
    except KeyboardInterrupt:
        if os.name == "nt":
            sniffer.ioctl(socket.SIO_RCVALL, socket.RCVALL_OFF)
if __name__ == '__main__':
    host = "192.168.232.130"
    main()
