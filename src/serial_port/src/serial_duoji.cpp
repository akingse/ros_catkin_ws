#include <ros/ros.h>
#include <std_msgs/Float64.h>
#include <std_msgs/Float64MultiArray.h>
#include <serial/serial.h>
#include <boost/thread.hpp>

#include <std_msgs/String.h>
#include <sstream>
#include <iostream> 
#include <string.h>
#include <ctime> 

serial::Serial ser; //定义串口对象
char cmd_return[40]; //全局舵机控制字符数组,长度为15*2+10

/*
class MultiSubscribe {
    public:
        MultiSubscribe();
        ~MultiSubscribe();
        //std_msgs::Float64MultiArray joint_angle;
        std_msgs::Float64 control_interval;

        //void callback_angle(const std_msgs::Float64MultiArray::ConstPtr &msg_angle);
        void callback_interval(const std_msgs::Float64::ConstPtr &msg_interval);
    private:
        ros::NodeHandle n_;
        ros::Subscriber sub_angle_;
        ros::Subscriber sub_interval_;
        //int joint_n; 
};*/

int main(int argc, char *argv[]) {
    ros::init(argc, argv, "servo_node"); //初始化节点
    ros::NodeHandle n; 
    //ros::Publisher pub = n.advertise<std_msgs::String>("chatter", 1000);//话题名可重复
    //ros::Rate rate(1);

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

    //MultiSubscribe double_subscribe; //订阅对象实例化
    //ros::MultiThreadedSpinner spinner(2); //多线程
    //spinner.spin();


    while (ros::ok())
    {/*
        std_msgs::String msg;
        std::stringstream ss; //创建字符流对象ss，使用字符流将数字转换为符号；
        ss << count;
        ss >> msg.data;*/

        std::string str0,str1,str5; //	"#002P2500T2000!";	delay(2000);	"#002P0500T2000!"; delay(2000);
        str0="#002P0500T2000!";
        str1="#002P2500T2000!";

        ser.write(str0);        //ser.print(str0);
        ros::Duration(2.5).sleep(); //单位是秒
        ser.write(str1);
        ros::Duration(2.5).sleep();
    std::string data;
    while (ser.available()>0)
    {
        data+= ser.read();
    }
  ROS_INFO_STREAM( " " << data);
        str5=ser.read();
        //ROS_INFO_STREAM( " " << str0<<" "<<str5);
        //rate.sleep();
    } 


    //ser.close(); //关闭串口
    return 0;
}
/*
MultiSubscribe::MultiSubscribe() {
    this->sub_angle_ = this->n_.subscribe("snake_joint_angle", 10, &MultiSubscribe::callback_angle, this);
    this->sub_interval_ = this->n_.subscribe("snake_control_interval", 10, &MultiSubscribe::callback_interval, this);
}

MultiSubscribe::~MultiSubscribe() {
}

void MultiSubscribe::callback_angle(const std_msgs::Float64MultiArray::ConstPtr &msg_angle) {
    this->joint_angle.data = msg_angle->data;
    ROS_INFO("interval ===> [%f]\tangle[0] ===> [%f]\tangle[1] ===> [%f]",
             this->control_interval.data, this->joint_angle.data[0], this->joint_angle.data[1]);

    this->joint_n = int(this->joint_angle.data.size() / 2);
    for (int i = 0; i < this->joint_n; i++) {
        std::sprintf(cmd_return, "{#%03dP%04dT%04d!#%03dP%04dT%04d!}",
                     int(2 * i + 1), int(this->joint_angle.data[2 * i] / 135 * 1000 + 1500 + 0.5),
                     int(this->control_interval.data * 1000),
                     int(2 * i + 2), int(this->joint_angle.data[2 * i + 1] / 135 * 1000 + 1500 + 0.5),
                     int(this->control_interval.data * 1000));
        ser.write(cmd_return);
    }
}

void MultiSubscribe::callback_interval(const std_msgs::Float64::ConstPtr &msg_interval) {
    this->control_interval.data = msg_interval->data;
    ROS_INFO("control_interval ===> [%f]", this->control_interval.data);
}
*/



