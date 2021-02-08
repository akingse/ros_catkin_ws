#!/usr/bin/python3
import math
import random
import numpy
# from numpy import *
# from sympy import *
import numpy as np

from dofnine_func import *

if __name__=="__main__":
    RCMx=-500
    RCMy=-200
    RCMz=100

    # T_RCM=np.asmatrix(np.array([
    #     [1,0,0,RCMx],
    #     [0,1,0,RCMy],
    #     [0,0,1,RCMz],
    #     [0,0,0,1],]))

    # T_AV=np.asmatrix(np.array([
    #     # [1,0,0,0],
    #     # [0,cos(pi/2),-sin(pi/2),0],
    #     # [0,sin(pi/2),cos(pi/2),0],
    #     # [0,0,0,1],]))
    #     [1,0,0,0],
    #     [0,0,-1,0],
    #     [0,1,0,0],
    #     [0,0,0,1],]))
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


    theta=np.array([-0.93923,-0.58306,-0.090068,-2.342,-1.5436,1.4268,677.06,1.7621,-0.398])
    theta=np.array([0.21700962,  -1.07470627,   1.65268827,   0.22918839,   1.69457253,   -1.55857467,   677.06,     1.7621,      -0.398])
    theta=np.array([0,-45,90,45,90,0,700*180/pi,0,0])*pi/180
    # theta=deg_to_rad(theta_deg)
    
    
    # T_end=dof_forward(theta)
    # print('T_end',T_end)
    T_end=np.asmatrix(np.array([
        # [0,           -1,            0,      -479.83],
        # [-1,            0,            0,         -290],
        # [0,            0,           -1,      -695.86],
        # [0,            0,            0,            1],]))
        [0,           0,            1,          0],
        [-1,            0,            0,         -300],
        [0,            -1,           0,         -600],
        [0,            0,            0,            1],]))
    
    # T_V6=Ti_R*T_end 
    T_V6=dof_forwardv(theta)


    thv=ikine_Virtual3(T_V6)
    # T_end=T_RCM*T_AV*T_V6
    T_A61=T_R*T_V6*inverse_kinev(thv[0,:])    #print(T_A61)
    tha=ikine_Actual6(T_A61)
    for i in range(4):
        for j in range(6,9):
            tha[i,j]=thv[0,j]

    print('tha',tha)#    print(tha.shape)
    print(rad_to_deg(tha))
    T_end=dof_forward(tha[0,:])
    print('T_end',T_end)
    p=[0,-pi/6,pi/3,2*pi/3,-pi/2,0,0.1,-pi/2,0]
    print('p',p)

