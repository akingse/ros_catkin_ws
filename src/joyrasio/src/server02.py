# !/usr/bin/python3
# -*-coding:utf-8 -*-
from socket import *
import time
COD = 'utf-8'
HOST = '192.168.137.1' # 无线局域网适配器 本地连接
HOST = '10.12.27.35' #以太网适配器 以太网 Pv4 地址
# HOST = '219.242.49.214' #外部IP OSError: [WinError 10049] 在其上下文中，该请求的地址无效。
HOST = '10.120.56.23'

PORT = 21566 # 软件端口号
BUFSIZ = 1024
ADDR = (HOST, PORT)
SIZE = 10 
tcpS = socket(AF_INET, SOCK_STREAM) # 创建socket对象
tcpS.setsockopt(SOL_SOCKET,SO_REUSEADDR,1) #加入socket配置，重用ip和端口
tcpS.bind(ADDR) # 绑定ip端口号
tcpS.listen(SIZE)  # 设置最大链接数
while True:
    print("服务器启动，监听客户端链接")
    conn, addr = tcpS.accept() 
    print("链接的客户端", addr)
    while True:
        try:
            data = conn.recv(BUFSIZ) # 读取已链接客户的发送的消息
            print(data) #https://www.cnblogs.com/chownjy/p/6625299.html
            # 文本总是Unicode，由str类型表示，二进制数据则由bytes类型表示。
            # 最早的字符编码规范是ASCII码，一种8位即1个字节的编码规范，它可以涵盖整个英语系的编码需要。
            # 标准组织制定出了叫做UNICODE的万国码，它规定任何一个字符（不管哪国的）至少以2个字节表示，可以更多。但是它不兼容ASCII
            # UTF-8编码应运而生，它规定英文字母系列用1个字节表示，汉字用3个字节表示等等。因此，它兼容ASCII



            # 我国还创造了自己的编码方式，例如GBK，GB2312，BIG5。他们只局限于在国内使用，不被国外认可。
            print(type(data)) #<class 'bytes'>
        except Exception:
            print("断开的客户端", addr)
            break
        print("客户端发送的内容:",data.decode(COD))
        if not data:
            break
        msg = time.strftime("%Y-%m-%d %X") #获取结构化事件戳
        msg1 = '[%s]:%s' % (msg, data.decode(COD))
        conn.send(msg1.encode(COD)) #发送消息给已链接客户端
    conn.close() #关闭客户端链接
tcpS.closel()


'''
tcps = socket() #创建服务器套接字
tcps.bind()      #把地址绑定到套接字
tcps.listen()      #监听链接

while True:      #服务器无限循环
    tcpc = tcps.accept() #接受客户端链接

    while True:         #通讯循环
        tcpc.recv()/
        tcpc.send() #对话(接收与发送)
    tcpc.close()    #关闭客户端套接字

tcps.close()        #关闭服务器套接字(可选)
'''