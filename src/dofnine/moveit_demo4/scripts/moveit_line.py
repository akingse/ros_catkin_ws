#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy, sys
import moveit_commander
import numpy as np
import numpy
import math

from dofnine_func import *
class MoveItFkDemo:
    def __init__(self):
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('moveit_fk_demo', anonymous=True)
        arm = moveit_commander.MoveGroupCommander('arm')
        
        arm.set_goal_joint_tolerance(0.001)
        arm.set_max_acceleration_scaling_factor(1)
        arm.set_max_velocity_scaling_factor(1)
        

        rcm_pose = np.array([0,-60,120,-150,-90,0,0.1*180/pi,90,0])*pi/180 
        gamma=0
        beta=1.57
        alpha=-1.57


        # tha=inverse_nine(gamma,beta,alpha,-500,0,-200)
        # arm.set_joint_value_target(for_joint(tha,1))
        # arm.go()
        # tha=inverse_nine(gamma,beta,alpha,-560,-100,-200)
        # arm.set_joint_value_target(for_joint(tha,1))
        # arm.go()
        # tha=inverse_nine(gamma,beta,alpha,-500,-200,-200)
        # arm.set_joint_value_target(for_joint(tha,1))
        # arm.go()
        # tha=inverse_nine(gamma,beta,alpha,-400,-100,-200)
        # arm.set_joint_value_target(for_joint(tha,1))
        # arm.go()
        # tha=inverse_nine(gamma,beta,alpha,-500,0,-200)
        # arm.set_joint_value_target(for_joint(tha,1))
        # arm.go()

        # arm.set_joint_value_target(rcm_pose)
        # arm.go()


        # point to point
        tha=inverse_nine(gamma,beta,alpha,-300,-200,-300)
        arm.set_joint_value_target(for_joint(tha,1))
        arm.go()
        tha=inverse_nine(gamma,beta,alpha,-500,0,-300)
        arm.set_joint_value_target(for_joint(tha,1))
        arm.go()

        # 关闭并退出moveit
        moveit_commander.roscpp_shutdown()
        moveit_commander.os._exit(0)

if __name__ == "__main__":
    try:
        MoveItFkDemo()
    except rospy.ROSInterruptException:
        pass
