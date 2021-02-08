#include <ros/ros.h>
#include <robotiq_ft_sensor/ft_sensor.h>
#include <iostream>
#include <fstream>
#include <string>
using namespace std;

void poseCallback(const robotiq_ft_sensor::ft_sensor::ConstPtr& msg)
{   
    ros::Rate loop_rate(1);
    robotiq_ft_sensor::ft_sensor pose;
    pose.Mx=msg->Mx;
    //ROS_INFO("Mx:%0.6f:",pose.Mx);
    ROS_INFO_STREAM(pose.Mx);
    ROS_INFO("Get_ft_sensor: x:%0.6f, y:%0.6f, z:%0.6f", msg->Fx, msg->Fy, msg->Fz);
    //oFile<<"Mx:"<<pose.Mx<<endl;
    loop_rate.sleep();
    //return pose;
}

int main(int argc, char **argv)
{   
    robotiq_ft_sensor::ft_sensor pose;
    ofstream oFile;    //打开要输出的文件
    oFile.open("mypose.csv",ios::out|ios::trunc);
    oFile<<"MX:"<<"1233"<<endl;
    

    ros::init(argc, argv, "record_csv");
    ros::NodeHandle n;
    //ros::Subscriber pose_sub = n.subscribe("robotiq_ft_sensor/ft_sensor", 10, poseCallback);
    ros::Subscriber pose_sub = n.subscribe("/robotiq_ft_sensor", 10, poseCallback);
    oFile<<"Mx:"<<pose.Mx<<endl;
    ros::spin();
    oFile.close();///home/akingse/catkin_ws/src/robotiq_ft_sensor/src


    return 0;
}


/*
rosrun robotiq_ft_sensor recored_csv


roscore

手动启动sensor节点
rosrun robotiq_ft_sensor rq_sensor

显示输出
rostopic echo /robotiq_ft_sensor
---------------------------------------------
rosnode info /robotiq_ft_sensor

Node [/robotiq_ft_sensor]
Publications: 
 * /robotiq_ft_sensor [robotiq_ft_sensor/ft_sensor]
 * /robotiq_ft_wrench [geometry_msgs/WrenchStamped]
 * /rosout [rosgraph_msgs/Log]

Subscriptions: None

Services: 
 * /robotiq_ft_sensor/get_loggers
 * /robotiq_ft_sensor/set_logger_level
 * /robotiq_ft_sensor_acc
---

rostopic info /robotiq_ft_sensor 
Type: robotiq_ft_sensor/ft_sensor
---

rosmsg info robotiq_ft_sensor/ft_sensor //include调用
float32 Fx
float32 Fy
float32 Fz
float32 Mx
float32 My
float32 Mz

rosmsg show turtlesim/Pose 
float32 x
float32 y
float32 theta
float32 linear_velocity
float32 angular_velocity


*/
