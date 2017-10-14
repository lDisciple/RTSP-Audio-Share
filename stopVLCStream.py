#!/bin/python3

import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('localhost', 8082))
s.sendall('shutdown\n'.encode())
s.sendall('quit\n'.encode())
s.shutdown(socket.SHUT_WR)