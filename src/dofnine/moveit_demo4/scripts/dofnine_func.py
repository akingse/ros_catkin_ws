import math
import random
import numpy
from numpy import *
from math import *
import numpy as np
np.set_printoptions(suppress=True)
#Chinese is not supported
'''---------------------------------------------------------------------------'''
def restrict_zero(T):

    if isinstance(T, numpy.ndarray) or isinstance(T, numpy.matrix): 
        lenth=T.shape
        for i in range(lenth[0]):
            for j in range(lenth[1]):
                if abs(T[i,j])<1e-10:
                    T[i,j]=0
    else:
        # print('getin1')
        if abs(T)<1e-10:
            T=0
    return T
def restrict_inpi(T): # list
    for i in range(len(T)):
        while abs(T[i])>pi:
            if T[i]>pi:
                T[i]=T[i]-2*pi
            elif T[i]<-pi:
                T[i]=T[i]+2*pi
    return T

def restrict_inpi_f(T):
    while abs(T)>math.pi:
            if T>pi:
                T=T-2*math.pi
            elif T<-pi:
                T=T+2*math.pi
    return T

def restrict_inpi_lam(T):
    if isinstance(T, numpy.ndarray) or isinstance(T, numpy.matrix):
        lenth=T.shape
        for i in range(lenth[0]):
            for j in range(lenth[1]):
                while abs(T[i,j])>math.pi:
                    if T[i,j]>pi:
                        T[i,j]=T[i,j]-2*math.pi
                    elif T[i,j]<-pi:
                        T[i,j]=T[i,j]+2*math.pi
    elif isinstance(T, list):
        for i in range(len(T)):
            while abs(T[i])>math.pi:
                if T[i]>pi:
                    T[i]=T[i]-2*math.pi
                elif T[i]<-pi:
                    T[i]=T[i]+2*math.pi
    else:
        while abs(T)>math.pi:
            if T>pi:
                T=T-2*math.pi
            elif T<-pi:
                T=T+2*math.pi
    return T
'''---------------------------------------------------------------------------'''

def rpy_to_tr(gamma,beta,alpha,RCMx,RCMy,RCMz):
    T=np.array([
        [cos(alpha)*cos(beta),cos(alpha)*sin(beta)*sin(gamma)-sin(alpha)*cos(gamma),cos(alpha)*sin(beta)*cos(gamma)+sin(alpha)*sin(gamma),RCMx],
        [sin(alpha)*cos(beta),sin(alpha)*sin(beta)*sin(gamma)+cos(alpha)*cos(gamma),sin(alpha)*sin(beta)*cos(gamma)-cos(alpha)*sin(gamma),RCMy],
        [-sin(beta),cos(beta)*sin(gamma),cos(beta)*cos(gamma),RCMz],
        [0,0,0,1]])
    return np.asmatrix(T)

def SDH_forward(d,theta,a,alpha):
    T=np.array([
        [ cos(theta), -cos(alpha)*sin(theta),  sin(alpha)*sin(theta), a*cos(theta)],
        [ sin(theta),  cos(alpha)*cos(theta), -sin(alpha)*cos(theta), a*sin(theta)],
        [          0,             sin(alpha),             cos(alpha),            d],
        [          0,                      0,                      0,            1]])
    #    [cos(theta),-sin(theta)*cos(alpha),sin(theta)*sin(alpha),a*cos(theta)],
    #    [sin(theta),cos(theta)*cos(alpha),-cos(theta)*sin(alpha),a*sin(theta)],
    #    [0,  sin(alpha),  cos(alpha), d],
    #    [0, 0, 0, 1],       ])
    # T=np.asmatrix(T)
    return T
def SDH_inverse(d,theta,a,alpha):
    T=np.array([
        [             cos(theta),             sin(theta),          0,            -a],
        [ -cos(alpha)*sin(theta),  cos(alpha)*cos(theta), sin(alpha), -d*sin(alpha)],
        [  sin(alpha)*sin(theta), -sin(alpha)*cos(theta), cos(alpha), -d*cos(alpha)],
        [                      0,                      0,          0,             1]])
    return T
'''---------------------------------------------------------------------------'''
def sqrt_m(t):
    T=np.zeros(len(t))
    for i in range(len(t)):
        T[i]=sqrt(t[i])
    return T
def sin_m(t):
    T=np.zeros(len(t))
    for i in range(len(t)):
        T[i]=math.sin(t[i])
    return T
def cos_m(t):
    T=np.zeros(len(t))
    for i in range(len(t)):
        T[i]=math.cos(t[i])
    return T
def acos_m(t):
    T=np.zeros(len(t))
    for i in range(len(t)):
        T[i]=math.acos(t[i])
    return T

def atan_m(t):
    T=np.zeros(len(t))
    for i in range(len(t)):
        T[i]=math.atan(t[i])
    return T
def atan2_m(a,b):
    T=np.zeros(len(a))
    for i in range(len(a)):
        T[i]=math.atan2(a[i],b[i])
    return T
'''---------------------------------------------------------------------------'''
def dof_forwardv(theta): #4-9
    d=[0.,0.,0.,0.,0.,0.,0.,0.,0.]
    a=[0.,0.,0.,0.,0.,0.,0.,50.,50.]
    alpha=[0,0,0,pi/2,-pi/2,0,pi/2,-pi/2,0]
    T=np.asmatrix(np.array([[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]]))
    T4=SDH_forward(d[3],theta[3],a[3],alpha[3])
    T5=SDH_forward(d[4],theta[4],a[4],alpha[4])
    T6=SDH_forward(d[5],theta[5],a[5],alpha[5])
    T7=SDH_forward(theta[6],0,a[6],alpha[6])
    T8=SDH_forward(d[7],theta[7],a[7],alpha[7])
    T9=SDH_forward(d[8],theta[8],a[8],alpha[8])
    T=T*T4*T5*T6*T7*T8*T9
    return np.asarray(T)


def dof_forward(theta): #1-9
    # d=[d1,0,0,d4,d5,d6,0,0,0]
    # a=[0,a2,a3,0,0,0,0,a8,a9]
    d=[90,0,0,100,100,100,0,0,0]
    a=[0,-420,-400,0,0,0,0,50,50]
    alpha=[pi/2,0,0,pi/2,-pi/2,0,pi/2,-pi/2,0]
    T=np.asmatrix(np.array([[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]]))
    # for i in range(6):# i=6 #I wanna know why,its work on win;
    #     T=T*SDH_forward(d[i],theta[i],a[i],alpha[i])
    # T=T*SDH_forward(theta[i],0,a[i],alpha[i])
    # for i in range(7,9):
    #     T=T*SDH_forward(d[i],theta[i],a[i],alpha[i])
    T1=SDH_forward(d[0],theta[0],a[0],alpha[0])
    T2=SDH_forward(d[1],theta[1],a[1],alpha[1])
    T3=SDH_forward(d[2],theta[2],a[2],alpha[2])
    T4=SDH_forward(d[3],theta[3],a[3],alpha[3])
    T5=SDH_forward(d[4],theta[4],a[4],alpha[4])
    T6=SDH_forward(d[5],theta[5],a[5],alpha[5])
    T7=SDH_forward(theta[6],0,a[6],alpha[6])
    T8=SDH_forward(d[7],theta[7],a[7],alpha[7])
    T9=SDH_forward(d[8],theta[8],a[8],alpha[8])
    T=T*T1*T2*T3*T4*T5*T6*T7*T8*T9
    return np.asarray(T)
def inverse_kinev(theta):
    # T=eye(4)
    d=[90,0,0,100,100,100,0,0,0]
    a=[0,-420,-400,0,0,0,0,50,50]
    alpha=[pi/2,0,0,pi/2,-pi/2,0,pi/2,-pi/2,0]
    T9i=SDH_inverse(d[8],theta[8],a[8],alpha[8])
    T8i=SDH_inverse(d[7],theta[7],a[7],alpha[7])
    T7i=SDH_inverse(theta[6],0,a[6],alpha[6])
    T=np.asmatrix(np.array([[1, 0, 0, 0], [0, 1, 0, 0], [0, 0, 1, 0], [0, 0, 0, 1]]))
    T=T*T9i*T8i*T7i
    return np.asarray(T)

def rad_to_deg(theta):
    theta_deg=theta
    length=theta_deg.shape
    for i in range(length[0]):
        for j in range(length[1]):
            theta_deg[i,j]=theta_deg[i,j]*180/pi
        theta_deg[i,6]=theta_deg[i,6]*pi/180
    return theta_deg
def deg_to_rad(theta):
    theta_deg=theta
    length=theta_deg.shape
    # print(length)
    for i in range(length[0]):
        for j in range(length[1]):
            theta_deg[i,j]=theta_deg[i,j]*pi/180
        theta_deg[i,6]=theta_deg[i,6]*180/pi
    return theta_deg
#-----------------------------------------------------------------
def ikine_Virtual3(T):
    a8=50
    a9=50
    nx=T[0,0]
    ox=T[0,1]
    ax=T[0,2]
    px=T[0,3]
    ny=T[1,0]
    oy=T[1,1]
    ay=T[1,2]
    py=T[1,3]
    nz=T[2,0]
    oz=T[2,1]
    az=T[2,2]
    pz=T[2,3]
    # %th9
    Px=px-a9*nx
    Py=py-a9*ny
    Pz=pz-a9*nz
    Pm=(Pz*ay-Py*az)*nx+(Px*az-Pz*ax)*ny+(Py*ax-Px*ay)*nz
    # print('Pm',type(Pm)) #<class 'sympy.core.numbers.Float'> <class 'numpy.float64'>
    Pm=restrict_zero(Pm)
    Pn=(Pz*ay-Py*az)*ox+(Px*az-Pz*ax)*oy+(Py*ax-Px*ay)*oz    
    Pn=restrict_zero(Pn)
    # th9=np.asmatrix(np.array([0,0]))
    # th9=np.array([[0,0]])
    th9=np.array([0.,0.]) 
    # print('th9',type(th9))#<class 'numpy.ndarray'>
    # print(th9.shape) #(2,)
    # th9[0,0]=atan(Pm/Pn)
    # th9[0,1]=th9[0,0]+pi
    # print(Pm/Pn)
    th9[0]=math.atan(Pm/Pn)
    th9[1]=th9[0]+pi
    # print('th9',type(th9),th9)
    # %th8
    Rx=nx*cos_m(th9)-ox*sin_m(th9)
    Ry=ny*cos_m(th9)-oy*sin_m(th9)
    Rz=nz*cos_m(th9)-oz*sin_m(th9)
    m81=ax*(Pz-a8*Rz)-az*(Px-a8*Rx)
    n81=Rz*(Px-a8*Rx)-Rx*(Pz-a8*Rz)
    th8=atan_m(m81/n81)
    # th8[2:3]=th8[0:1]+pi
    th8=np.append(th8,th8+pi)
    th9=np.append(th9,th9)
    # print('th8',type(th8))
    # print('th8',th8)

    # th8=np.array([[0,0,0,0]])
    # print(atan_m(m81/n81))
    # print(th8.shape)
    # th8[0,0:1]=atan_m(m81/n81)
    # th8[3:4]=th8[1:2]+pi
    # th9[3:4]=th9[1:2]
    # th8=restrict_inpi(th8)

    # %d7
    Mz=ax*cos_m(th8) + sin_m(th8)*(nx*cos_m(th9)-ox*sin_m(th9))
    Nz=px-a9*nx-a8*(nx*cos_m(th9)-ox*sin_m(th9))
    # Mz=az*cos_m(th8) + sin_m(th8)*(nz*cos_m(th9)-oz*sin_m(th9))
    # Nz=pz-a9*nz-a8*(nz*cos_m(th9)-oz*sin_m(th9))
    # print(Mz)
    # print(Nz)
    # Mz=restrict_zero(Mz)
    # Nz=restrict_zero(Nz)
    # d7=np.array([0,0,0,0])
    d7=Nz/Mz
    # print('d7',type(d7),d7)
    th = numpy.zeros(shape=(2,9))
    i=0 
    for j in range(4):
        if d7[j]>0:
            th[i,8]=restrict_inpi_f(th9[j])
            th[i,7]=restrict_inpi_f(th8[j])
            th[i,6]=d7[j]#/1000,different metro with moveit
            i=i+1
    # print('virtual',th)
    return th


def ikine_Actual6(T):
    d1=90
    d4=100
    d5=100
    d6=100
    a2=-420
    a3=-400
    nx=T[0,0]
    ox=T[0,1]
    ax=T[0,2]
    px=T[0,3]
    ny=T[1,0]
    oy=T[1,1]
    ay=T[1,2]
    py=T[1,3]
    nz=T[2,0]
    oz=T[2,1]
    az=T[2,2]
    pz=T[2,3]
    th1=np.array([0.,0.]) 
    #th1
    m1=px-d6*ax
    n1=py-d6*ay
    if (d4**2<=m1**2+n1**2):#power(x,2)
        k1=d4/sqrt(m1**2+n1**2)
        th1[0]=acos(-k1)-atan2(m1,n1)
        th1[1]=-acos(-k1)-atan2(m1,n1)
    else:
        th1[0:1]=NaN
    # th1=restrict_inpi(th1)
    # print('th1',type(th1),th1)
    # print(len(th1))

    #th5
    k5=ax*sin_m(th1)-ay*cos_m(th1)
    th5=acos_m(k5)
    th5=np.append(th5,-th5)
    # th5(3:4)=-th5(1:2)
    # print('th5',type(th5),th5)
    m6=oy*cos_m(th1)-ox*sin_m(th1)
    n6=ny*cos_m(th1)-nx*sin_m(th1)
    th6=atan2_m(m6,-n6)
    th6=np.append(th6,th6+pi)
    # th6=restrict_inpi(th6)
    # print('th6',type(th6),th6)
    #th23
    th1=np.append(th1,th1)
    # m23=px*cos(th1)+py*sin(th1)-d6*(ax*cos(th1)+ay*sin(th1))+d5*(sin(th6)*(nx*cos(th1)+ny*sin(th1))+cos(th6)*(ox*cos(th1)+oy*sin(th1)))
    # n23=pz-d1-d6*az+d5*(nz*sin(th6)+oz*cos(th6))
    m23=px*cos_m(th1)+py*sin_m(th1)-d6*(ax*cos_m(th1)+ay*sin_m(th1))+d5*(sin_m(th6)*(nx*cos_m(th1)+ny*sin_m(th1))+cos_m(th6)*(ox*cos_m(th1)+oy*sin_m(th1)))
    n23=pz-d1-d6*az+d5*(nz*sin_m(th6)+oz*cos_m(th6))
    # print(m23,m23**2)
    # print(n23,n23**2)
    #th2
    k2=(m23**2+n23**2+a2**2-a3**2)/sqrt_m((2*a2*m23)**2+(2*a2*n23)**2)
    # print('k2',k2)
    at=atan2_m(n23*a2,m23*a2)
    ac=acos_m(k2)
    # print(at)
    # print(ac)
    th2=at-ac
    
    th2=np.append(th2,at+ac)
    # th2(5:8)=atan2(n23*a2,m23*a2)+acos(k2)
    # print('th2',type(th2),th2)
    # th2=restrict_inpi(th2)
    # print('th2',type(th2),th2)
    # th3
    k3=(m23**2+n23**2-a2**2-a3**2)/(2*a2*a3)
    th3=acos_m(k3)
    th3=np.append(th3,-th3)
    # print('th3',th3)
    #th4
    m234=-sin_m(th6)*(nx*cos_m(th1)+ny*sin_m(th1))-cos_m(th6)*(ox*cos_m(th1)+oy*sin_m(th1))
    n234=nz*sin_m(th6)+oz*cos_m(th6)

    th234=atan2_m(m234,n234)
    th234=np.append(th234,th234)
    # th234(5:8)=th234(1:4)
    th4=th234-th3-th2
    # th4=restrict_inpi(th4)
    # print('th4',th4)

    th1=np.append(th1,th1)
    th5=np.append(th5,th5)
    th6=np.append(th6,th6)
    th = numpy.zeros(shape=(4,9))

    # print(type(th2),th2)
    # print(restrict_inpi(th))
    i=0
    for j in range(8):
        if restrict_inpi_f(th2[j])<0:
            th[i,0]=restrict_inpi_f(th1[j])
            th[i,1]=restrict_inpi_f(th2[j])
            th[i,2]=th3[j] #acos()
            th[i,3]=restrict_inpi_f(th4[j])
            th[i,4]=th5[j] #acos()
            th[i,5]=restrict_inpi_f(th6[j])
            i=i+1
    # print('th',th)
    return th

def inverse_nine(gamma,beta,alpha,x,y,z):
    T_end=rpy_to_tr(gamma,beta,alpha,x,y,z)
    # print("T_end",T_end)
    # home_pose==rpy_to_tr(0,pi/2,-pi/2,-510,-100,-192.68)
    RCMx=-510
    RCMy=-100
    RCMz=7.3205
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
    T_V6=Ti_R*T_end
    thv=ikine_Virtual3(T_V6)
    # print('thv',thv[0,:])
    # T_A61=T_R*T_V6*inverse_kinev(thv[0,:])
    T_A61=T_end*inverse_kinev(thv[0,:])
    # print('T_A61',T_A61)
    tha=ikine_Actual6(T_A61)
    for i in range(4):
        for j in range(6,9):
            tha[i,j]=thv[0,j]
    return tha
def for_joint(theta,i):
    theta[:,6]=theta[:,6]/1000
    return theta[i,:]



if __name__=="__main__":

    # theta_rand=np.mat('-0.93923     -0.58306    -0.090068       -2.342      -1.5436       1.4268       677.06       1.7621       -0.398')
    # theta_rand=np.array([-0.93923,-0.58306,-0.090068,-2.342,-1.5436,1.4268,677.06,1.7621,-0.398])
    # # theta_rand=np.array([ -0.19482407,-0.95459682,1.45622279,0.31137558,1.40852146,-1.85593105,677.05631325,1.76210031,-0.39799987])
    # # print(type(theta_rand))
    # T_RCM=np.asmatrix(np.array([
    #     [1,0,0,-600],
    #     [0,1,0,0],
    #     [0,0,1,100],
    #     [0,0,0,1],]))
    # # print(T_RCM)
    # T_AV=np.asmatrix(np.array([
    #     [1,0,0,0],
    #     [0,cos(pi/2),-sin(pi/2),0],
    #     [0,sin(pi/2),cos(pi/2),0],
    #     [0,0,0,1],]))
    # print(type(T_AV))
    # print(T_AV)
    # T_V6=dof_forwardv(theta_rand)
    # print('T_V6',T_V6)
    # T_V6=np.asmatrix(np.array([
    #     [-0.80163,     -0.20506,     -0.56156,      -625.39],
    #     [-0.49605,     -0.29612,      0.81624,      -585.65],
    #     [-0.33367,      0.93288,      0.13566,      -13.975],
    #     [       0,            0,            0,            1],]))
    # T_end=T_RCM*T_AV*T_V6
    # # print('T_end',T_end)
    # thv=ikine_Virtual3(T_V6)

    # T_A61=T_end*inverse_kinev(thv[0,:]) 
    # # print('T_A61',T_A61)
    # tha=ikine_Actual6(T_A61)
    # for i in range(4):
    #     for j in range(6,9):
    #         tha[i,j]=thv[0,j]

    # print('tha',tha)
    # print(rad_to_deg(tha))
#-----------------------------------------------
    gamma=0
    beta=1.57
    alpha=-1.57
    x=-520
    y=-120
    z=-300
    tha=inverse_nine(gamma,beta,alpha,x,y,z)
    print('tha',tha)
    print('to joint',for_joint(tha,0))
    # the=np.array([0,-60,120,-150,-90,0,200*180/pi,90,0])*pi/180 
    # print(the) #tha[0,:]
    # T=dof_forward(tha[0,:])
    # print(T)


