#!/usr/bin/python3
import math
import random
import numpy
# from numpy import *
# from sympy import *
import numpy as np

from dofnine_func import *

if __name__=="__main__":
    gamma=0
    beta=1.57
    alpha=-1.57
    x=-520
    y=-120
    z=-300
    tha=inverse_nine(gamma,beta,alpha,x,y,z)
    print('tha',tha)


def old_version():
    RCMx=-510#-810.14
    RCMy=-100#-100
    RCMz=7.3205#0

    T_R=np.asmatrix(np.array([ #T_RCM*T_AV
        [ 1, 0,  0, RCMx],
        [ 0, 0, -1, RCMy],
        [ 0, 1,  0, RCMz],
        [ 0, 0,  0,    1],]))
    Ti_R=np.asmatrix(np.array([ #invtrot(T_AV)*invtrans(T_RCM)
        [ 1,  0, 0, -RCMx],
        [ 0,  0, 1, -RCMz],
        [ 0, -1, 0,  RCMy],
        [ 0,  0, 0,     1],]))


    # theta=np.array([-0.93923,-0.58306,-0.090068,-2.342,-1.5436,1.4268,677.06,1.7621,-0.398])
    # theta=np.array([0.21700962,  -1.07470627,   1.65268827,   0.22918839,   1.69457253,   -1.55857467,   677.06,     1.7621,      -0.398])
    # theta=np.array([0,-45,90,45,90,0,700*180/pi,0,0])*pi/180
    # theta=deg_to_rad(theta_deg)
    
    
    # T_end=dof_forward(theta)
    # print('T_end',T_end)
    # home_pose==T=rpy_to_tr(pi,pi,pi/2)
    # gamma=3.14
    # beta=3.14
    # alpha=1.57
    # x=RCMx+20
    # y=RCMy+20
    # z=RCMz-200
    # T_end=rpy_to_tr(gamma,beta,alpha,x,y,z)

    
    # T_V6=Ti_R*T_end 
    # # print('tha',T_V6)
    # # T_V6=dof_forwardv(theta)
    # thv=ikine_Virtual3(T_V6)
    # # T_end=T_RCM*T_AV*T_V6
    # T_A61=T_R*T_V6*inverse_kinev(thv[0,:])    #print(T_A61)
    # tha=ikine_Actual6(T_A61)
    # for i in range(4):
    #     for j in range(6,9):
    #         tha[i,j]=thv[0,j]

    # print('tha',tha)#    print(tha.shape)
    # # print(rad_to_deg(tha))
    # # T_end=dof_forward(tha[0,:])
    # # print('T_end',T_end)
    # for i in range(4):
    #     T_for=dof_forward(tha[i,:])
    #     print(T_for)

