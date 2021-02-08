#!/usr/bin/env python
# '''joypy_demo ROS Node'''
# '''joypy_demo Callback Function'''
# '''joypy_demo Subscriber'''
import rospy
from std_msgs.msg import String

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + " I heard " + data.data)

def listener():
    rospy.init_node('joypy_demo_sub') 
    rospy.Subscriber("chatter", String, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
