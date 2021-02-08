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

        # 初始化move_group的API
        moveit_commander.roscpp_initialize(sys.argv)

        # 初始化ROS节点
        rospy.init_node('moveit_fk_demo', anonymous=True)
 
        # 初始化需要使用move group控制的机械臂中的arm group
        # arm = moveit_commander.MoveGroupCommander('manipulator')
        arm = moveit_commander.MoveGroupCommander('arm')
        
        # 设置机械臂运动的允许误差值
        arm.set_goal_joint_tolerance(0.001)

        # 设置允许的最大速度和加速度
        arm.set_max_acceleration_scaling_factor(1)
        arm.set_max_velocity_scaling_factor(1)
        
        # 控制机械臂先回到初始化位置neng
        # arm.set_named_target('home_pose')
        # arm.go()
        # rospy.sleep(1)
        #-------------------
        rcm_pose = np.array([0,-60,120,-150,-90,0,0.1*180/pi,90,0])*pi/180 
        arm.set_joint_value_target(rcm_pose)
        arm.go()
        rospy.sleep(1)
        
        # joint_positions = for_joint(tha,0)#only 1
        # joint_positions =np.array([0.33, -0.66, 0.42, 1.17, -0.64, 0.94, 0.3, -1.59, 0.0])
        # joint_positions=list(joint_positions)
        # print('joint_positions',joint_positions)
        gamma=0
        beta=1.57
        alpha=-1.57
        # RCM=[-510,-100,7.3205]
        # Tend=[-510,-100,-192.679]
        # centre of circle p[-500,-100,-300] d=(0.01-0.5)
        # x=-500
        # y=0
        # z=-200
        # tha=inverse_nine(gamma,beta,alpha,x,y,z)#        print('tha',tha)
        # arm.set_joint_value_target(for_joint(tha,1))
        # arm.go()
        # rospy.sleep(1)
        inter=50#interlotion
        for i in range(inter+1):
            y=-i*(200/inter)
            x=-sqrt(100**2-(y+100)**2)-500
            z=-300
            tha=inverse_nine(gamma,beta,alpha,x,y,z)
            arm.set_joint_value_target(for_joint(tha,1))
            arm.go()
            # rospy.sleep(0.1)
        for i in range(inter+1):
            y=-200+i*(200/inter)
            x=sqrt(100**2-(y+100)**2)-500
            z=-300
            tha=inverse_nine(gamma,beta,alpha,x,y,z)
            arm.set_joint_value_target(for_joint(tha,1))
            arm.go()

        # # 控制机械臂先回到初始化位置
        # arm.set_named_target('home_pose')
        # arm.go()
        # rospy.sleep(1)
        # arm.set_joint_value_target(rcm_pose)
        # arm.go()
        # rospy.sleep(1)

        # tha=inverse_nine(gamma,beta,alpha,-450,0,-300)
        # arm.set_joint_value_target(for_joint(tha,1))
        # arm.go()
        # tha=inverse_nine(gamma,beta,alpha,-550,-200,-200)
        # arm.set_joint_value_target(for_joint(tha,1))
        # arm.go()
        arm.set_joint_value_target(rcm_pose)
        arm.go()

        # 关闭并退出moveit
        moveit_commander.roscpp_shutdown()
        moveit_commander.os._exit(0)

if __name__ == "__main__":
    try:
        MoveItFkDemo()
    except rospy.ROSInterruptException:
        pass
