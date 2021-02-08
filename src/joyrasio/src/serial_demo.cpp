#include <ros/ros.h>
#include <serial/serial.h>

#include <std_msgs/String.h>
#include <sstream>
#include <iostream> 
#include <string.h>
#include <ctime> 


// void setup(){}
    serial::Serial ser; //定义串口对象
    char cmd_return[40]; //全局舵机控制字符数组,长度为15*2+10

    // void uart_send_str(char *s) {
    // ser.write(s);
    // }

int main(int argc, char *argv[]) {

    ros::init(argc, argv, "serial_demo"); //初始化节点
    ros::NodeHandle n; 

    ser.setPort("/dev/ttyUSB0"); //设置要打开的串口名称
    ser.setBaudrate(115200); //设置串口通信的波特率;115200,意思就是每秒传输这么多个比特位数(bit)。
    serial::Timeout to = serial::Timeout::simpleTimeout(1000); //创建timeout
    ser.setTimeout(to); //串口设置timeout
    try {
        ser.open(); //打开串口
    }
    catch (serial::IOException &e) {
        ROS_ERROR_STREAM("Unable to open port");
        return -1;
    }
    //检测串口是否已经打开,并给出提示信息
    if (ser.isOpen()) {
        ROS_INFO_STREAM("Serial Port initialized");
    } else {
        return -1;
    }




    // while (ros::ok())    {
        std::string str0,str1,str2,str5; //	"#002P2500T2000!";	delay(2000);	"#002P0500T2000!"; delay(2000);
        str0="#002P0500T2000!";
        str1="#002P2500T2000!";
        str2="#002PRAD!";

// write (const uint8_t *data, size_t size);
        ser.write("#002P0500T2000!");        
        ros::Duration(2.5).sleep(); //单位是秒
        ser.write("#002P2500T2000!");
        ros::Duration(2.5).sleep();
        // ser.write(str2);
        // ros::Duration(2.5).sleep();
        // ROS_INFO_STREAM( "wrote" );

    std::string receives;
    while (ser.available()>0)
    {
        receives+= ser.read();
    }
    // ROS_INFO_STREAM( "read:" << receives);
        // str5=ser.read();
        //ROS_INFO_STREAM( " " << str0<<" "<<str5);
        //rate.sleep();
    // } 

    // ser.close();
    return 0;
}