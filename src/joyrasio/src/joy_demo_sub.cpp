#include "ros/ros.h"
#include "std_msgs/String.h"


// void chatterCallback(const std_msgs::String::ConstPtr &msg)
void chatterCallback(const std_msgs::String &msg)
{
	// ROS_INFO("I heard: [%s]", msg->data.c_str());
	ROS_INFO_STREAM("I heard:"<<msg.data);
}

int main(int argc, char *argv[])
{
	ros::init(argc, argv, "joy_demo_sub");
	ros::NodeHandle n;
	ros::Subscriber sub = n.subscribe("chatter", 1000, chatterCallback);
	ros::spin();
	return 0;
}