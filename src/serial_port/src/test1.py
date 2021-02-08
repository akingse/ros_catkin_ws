#!/usr/bin/env python
#edited by jiali zhang, 20181224
 
import rospy
import std_msgs
from std_msgs.msg import UInt16
 
 
class rotate:
    def __init__(self):
        rospy.init_node('rotate')
        
	# Publisher to control
        self.angle = rospy.Publisher('/servo', UInt16, queue_size=5)
	rospy.sleep(2)
        angle0 = UInt16(10)
        self.angle.publish(angle0)
	print "ready"
	rospy.sleep(1)
	
	# first angle
	angle1 = UInt16(40)
        self.angle.publish(angle1)
	print "first"
	rospy.sleep(1)
 
	# second angle
	angle2 = UInt16(120)
        self.angle.publish(angle2)
	print "second"
 
if __name__ == "__main__":
    rotate()
