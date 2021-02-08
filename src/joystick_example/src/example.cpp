#include<ros/ros.h>
#include<geometry_msgs/Twist.h>
#include<sensor_msgs/Joy.h>
#include<iostream>
using namespace std;

class TeleopJoy{
	public:
		TeleopJoy();
	private:
		void callBack(const sensor_msgs::Joy::ConstPtr& joy);
		ros::NodeHandle n;
		ros::Publisher pub;
		ros::Publisher pub1;
		ros::Subscriber sub;
		int i_velLinear, i_velAngular;
};

TeleopJoy::TeleopJoy()
{	
	n.param("axis_linear",i_velLinear,1); //设定手柄对应按键号
	n.param("axis_angular",i_velAngular,0);
	pub = n.advertise<geometry_msgs::Twist>("/cmd_vel",1);
	pub1 = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",1);
	sub = n.subscribe<sensor_msgs::Joy>("joy", 10, &TeleopJoy::callBack, this);
}

void TeleopJoy::callBack(const sensor_msgs::Joy::ConstPtr& joy)
{	
	geometry_msgs::Twist vel;
	geometry_msgs::Twist vel1;
	vel.angular.z = joy->axes[i_velAngular];//[0];//
	vel.linear.x = joy->axes[i_velLinear];//[1];//
	vel1.linear.x=10*vel.linear.x;
	vel1.angular.z=10*vel.angular.z;
	pub.publish(vel);
	pub1.publish(vel1);
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "example");
	TeleopJoy teleop_turtle;
	ros::spin();
}
