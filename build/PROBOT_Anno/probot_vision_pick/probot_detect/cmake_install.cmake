# Install script for directory: /home/akingse/catkin_ws/src/PROBOT_Anno/probot_vision_pick/probot_detect

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_detect/srv" TYPE FILE FILES "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_vision_pick/probot_detect/srv/detectobjectionSrv.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_detect/cmake" TYPE FILE FILES "/home/akingse/catkin_ws/build/PROBOT_Anno/probot_vision_pick/probot_detect/catkin_generated/installspace/probot_detect-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/akingse/catkin_ws/devel/include/probot_detect")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/akingse/catkin_ws/devel/share/roseus/ros/probot_detect")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/akingse/catkin_ws/devel/share/common-lisp/ros/probot_detect")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/akingse/catkin_ws/devel/share/gennodejs/ros/probot_detect")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/akingse/catkin_ws/devel/lib/python2.7/dist-packages/probot_detect")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/akingse/catkin_ws/devel/lib/python2.7/dist-packages/probot_detect")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/akingse/catkin_ws/build/PROBOT_Anno/probot_vision_pick/probot_detect/catkin_generated/installspace/probot_detect.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_detect/cmake" TYPE FILE FILES "/home/akingse/catkin_ws/build/PROBOT_Anno/probot_vision_pick/probot_detect/catkin_generated/installspace/probot_detect-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_detect/cmake" TYPE FILE FILES
    "/home/akingse/catkin_ws/build/PROBOT_Anno/probot_vision_pick/probot_detect/catkin_generated/installspace/probot_detectConfig.cmake"
    "/home/akingse/catkin_ws/build/PROBOT_Anno/probot_vision_pick/probot_detect/catkin_generated/installspace/probot_detectConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/probot_detect" TYPE FILE FILES "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_vision_pick/probot_detect/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/probot_detect" TYPE PROGRAM FILES
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_vision_pick/probot_detect/scripts/Detector_pick.py"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_vision_pick/probot_detect/scripts/help_file/label_map_util.py"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_vision_pick/probot_detect/scripts/help_file/standard_fields.py"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_vision_pick/probot_detect/scripts/help_file/string_int_label_map_pb2.py"
    "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_vision_pick/probot_detect/scripts/help_file/visualization_utils.py"
    )
endif()

