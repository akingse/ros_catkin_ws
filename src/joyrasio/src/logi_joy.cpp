#include<ros/ros.h>
#include<geometry_msgs/Twist.h>
#include<sensor_msgs/Joy.h>
#include<iostream>



void TeleopJoy_callBack(const sensor_msgs::Joy::ConstPtr& joy)
{	
	geometry_msgs::Twist orien;
	// vel.angular.z = joy->axes[0];
	// vel.linear.x = joy->axes[1];
	// vel.linear.y = joy->buttons[0];
	// ROS_INFO_STREAM("joystick:"<<vel.angular.z<<" "<<vel.linear.x<<" "<<vel.linear.y);
	
	orien.linear.x = joy->axes[4]; //left(1) and right(-1)
	orien.linear.y = joy->axes[5]; //fore(1) and back(-1)

	orien.angular.x = joy->buttons[4]; //up(1)
	orien.angular.y = joy->buttons[6]; //down(1)
	// ROS_INFO_STREAM("joystick:"<<orien.linear.x<<" "<<orien.linear.y<<" "<<orien.angular.x<<" "<<orien.angular.y);
	// if (orien.linear.x==1){
	// 	ROS_INFO_STREAM("left");
	// }

	// else if (orien.linear.x==-1){
	// 	ROS_INFO_STREAM("right");
	// }

	// else {
	// 	ROS_INFO_STREAM("stop");
	// }
	if (orien.angular.x==1 & orien.angular.y==0){
		ROS_INFO_STREAM("up");
	}

	else if (orien.angular.y==1 & orien.angular.x==0){
		ROS_INFO_STREAM("down");
	}

	else {
		ROS_INFO_STREAM("stop");
	}

}

int main(int argc, char *argv[])
{
	ros::init(argc, argv, "logi_joy");
	ros::NodeHandle n;
	// ROS_INFO_STREAM("test");
	ros::Subscriber sub = n.subscribe("joy", 10, TeleopJoy_callBack);
	ros::spin();
}