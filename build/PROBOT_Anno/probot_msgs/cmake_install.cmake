# Install script for directory: /home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/akingse/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_msgs/msg" TYPE FILE FILES
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_msgs/srv" TYPE FILE FILES
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_msgs/cmake" TYPE FILE FILES "/home/akingse/catkin_ws/build/PROBOT_Anno/probot_msgs/catkin_generated/installspace/probot_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/akingse/catkin_ws/devel/include/probot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/akingse/catkin_ws/devel/share/roseus/ros/probot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/akingse/catkin_ws/devel/share/common-lisp/ros/probot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/akingse/catkin_ws/devel/share/gennodejs/ros/probot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/akingse/catkin_ws/devel/lib/python2.7/dist-packages/probot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/akingse/catkin_ws/devel/lib/python2.7/dist-packages/probot_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/akingse/catkin_ws/build/PROBOT_Anno/probot_msgs/catkin_generated/installspace/probot_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_msgs/cmake" TYPE FILE FILES "/home/akingse/catkin_ws/build/PROBOT_Anno/probot_msgs/catkin_generated/installspace/probot_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_msgs/cmake" TYPE FILE FILES
    "/home/akingse/catkin_ws/build/PROBOT_Anno/probot_msgs/catkin_generated/installspace/probot_msgsConfig.cmake"
    "/home/akingse/catkin_ws/build/PROBOT_Anno/probot_msgs/catkin_generated/installspace/probot_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_msgs" TYPE FILE FILES "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/package.xml")
endif()

