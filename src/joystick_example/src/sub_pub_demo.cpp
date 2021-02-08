#include<ros/ros.h>
#include<geometry_msgs/Twist.h>
#include<sensor_msgs/Joy.h>
#include<iostream>

class Sub_Pub{
	private:
		void callback(const sensor_msgs::Joy::ConstPtr& joy);
		ros::NodeHandle n;
		ros::Publisher pub;
		ros::Subscriber sub;
	public:
		Sub_Pub(){
            pub = n.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",10);
			sub = n.subscribe<sensor_msgs::Joy>("joy", 10, &Sub_Pub::callback, this);
        }
};


void Sub_Pub::callback(const sensor_msgs::Joy::ConstPtr& joy){	
	geometry_msgs::Twist orien;
	orien.angular.z = joy->axes[0];
	orien.linear.x = joy->axes[1];
    pub.publish(orien);
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "sub_pub_demo");
	Sub_Pub teleop_turtle;
	ros::spin();
}
