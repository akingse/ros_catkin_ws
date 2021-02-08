#include <ros/ros.h>
#include <serial/serial.h>
#include <iostream>
 
int main(int argc, char** argv)
{
    ros::init(argc, argv, "serial_port");
    ros::NodeHandle n;
    //创建一个serial类
    serial::Serial ser;
    //创建timeout
    serial::Timeout to = serial::Timeout::simpleTimeout(100);
    //设置要打开的串口名称
    ser.setPort("/dev/ttyUSB0");
    //设置串口通信的波特率
    ser.setBaudrate(115200);
    //串口设置timeout
    ser.setTimeout(to);
 
    try
    {
        ser.open();//打开串口
    }
    catch(serial::IOException& e)
    {
        ROS_ERROR_STREAM("Unable to open port.");
        return -1; //按照程序开发的一般惯例，表示该函数失败；
    }
    
    //判断串口是否打开成功
    if(ser.isOpen())
    {
        ROS_INFO_STREAM("/dev/ttyUSB0 is opened.");
    }
    else
    {
        return -1;
    }
    
    ros::Rate loop_rate(500);
    while(ros::ok())
    {
        //获取缓冲区内的字节数
        //Serial.available() 的意思是：返回串口缓冲区中当前剩余的字符个数。
        /*
        size_t n = ser.available();//句柄节点n 不重名吗
        if(n!=0)
        {
            uint8_t buffer[1024];
			uint8_t s_buffer[6];
			s_buffer[0]=0xff;
			s_buffer[1]=0xfe;
			s_buffer[2]=0x05;
			s_buffer[3]=0x01;
			s_buffer[4]=0x05;
			s_buffer[5]=0x01;	
            ser.write(s_buffer, 6);
            n = ser.read(buffer, n); 
            for(int i=0; i<n; i++)
            {                //16进制的方式打印到屏幕
                //std::cout << std::hex << (buffer[i] & 0xff) << " ";
            }
            //std::cout << std::endl;
            //把数据发送回去
            ser.write(buffer, n);
        }*/
        loop_rate.sleep();
    }
    
    ser.close();//关闭串口
    return 0;
}


/*
//serial包的文档有对每个类和函数的解释，可以参考：http://docs.ros.org/kinetic/api/serial/html/annotated.html
//其中解释一下timeout的作用，在serial::Timeout结构体中有这么5个成员：
serial::Timeout::Timeout	(	
    uint32_t 	inter_byte_timeout_ = 0,
    uint32_t 	read_timeout_constant_ = 0,
    uint32_t 	read_timeout_multiplier_ = 0,
    uint32_t 	write_timeout_constant_ = 0,
    uint32_t 	write_timeout_multiplier_ = 0 
)	

*/




