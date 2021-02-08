#include "ros/ros.h"
#include "std_msgs/String.h"
#include <sstream>


int main(int argc, char *argv[])
{

	ros::init(argc, argv, "joy_demo_pub");
	ros::NodeHandle n;
	ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
	ros::Rate loop_rate(10);
	int count = 0;
	while (ros::ok())
	{
		std_msgs::String msg;
		std::stringstream ss;//发字符串
		ss << "hello world " << count;
		msg.data = ss.str(); //数字转字符；
		// ROS_INFO("%s", msg.data.c_str());// C的语法；
		ROS_INFO_STREAM(""<<msg.data);


		chatter_pub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
		++count;
	}

	return 0;
}