# !/usr/bin/python3
# -*-coding:utf-8 -*-
from socket import *
from time import ctime
# HOST = '192.168.137.1' #服务端ip
HOST = '10.12.27.35'
# HOST = '172.20.10.6'
HOST = '10.120.56.23'

PORT = 21566 #服务端端口号
# PORT = 9999

BUFSIZ = 1024
ADDR = (HOST, PORT)
tcpCliSock = socket(AF_INET, SOCK_STREAM) #创建socket对象
tcpCliSock.connect(ADDR) #连接服务器
while True:
    data = input('>>').strip()
    if not data:
        break
    tcpCliSock.send(data.encode('utf-8')) #发送消息
    data = tcpCliSock.recv(BUFSIZ) #读取消息
    if not data:
        break
    print(data)
    print(type(data)) 
    # print(data.decode('utf-8'))

    # b = bytes(s, encoding='utf-8')
    data=str(data, encoding='utf-8') #datastr
    print(data)
    print(type(data)) 
tcpCliSock.close() #关闭客户端

# cw65s-ubuntu
# IP 地址 10.120.56.23

'''
tcpc = socket()    # 创建客户端套接字
tcpc.connect()    # 尝试连接服务器
while True:        # 通讯循环
    tcpc.send()/
    tcpc.recv()    # 对话(发送/接收)
tcpc.close()      # 关闭客户套接字
'''
'''
python3 client02.py
python3 src/client02.py
'''