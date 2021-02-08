# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "probot_msgs: 11 messages, 4 services")

set(MSG_I_FLAGS "-Iprobot_msgs:/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(probot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg" ""
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv" "geometry_msgs/Quaternion:probot_msgs/Config:geometry_msgs/Pose:geometry_msgs/Point:probot_msgs/InterfaceReturnCode"
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg" ""
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:probot_msgs/PredefinedPoint"
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg" ""
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg" ""
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg" ""
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg" ""
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg" ""
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv" "geometry_msgs/Pose:probot_msgs/PredefinedPoint:geometry_msgs/Quaternion:geometry_msgs/Point:probot_msgs/InterfaceReturnCode:probot_msgs/PredefinedPointList"
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv" ""
)

get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv" NAME_WE)
add_custom_target(_probot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "probot_msgs" "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_msg_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)

### Generating Services
_generate_srv_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_srv_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_srv_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)
_generate_srv_cpp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
)

### Generating Module File
_generate_module_cpp(probot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(probot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(probot_msgs_generate_messages probot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_cpp _probot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_msgs_gencpp)
add_dependencies(probot_msgs_gencpp probot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_msg_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)

### Generating Services
_generate_srv_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_srv_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_srv_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)
_generate_srv_eus(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
)

### Generating Module File
_generate_module_eus(probot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(probot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(probot_msgs_generate_messages probot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_eus _probot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_msgs_geneus)
add_dependencies(probot_msgs_geneus probot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_msg_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)

### Generating Services
_generate_srv_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_srv_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_srv_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)
_generate_srv_lisp(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
)

### Generating Module File
_generate_module_lisp(probot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(probot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(probot_msgs_generate_messages probot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_lisp _probot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_msgs_genlisp)
add_dependencies(probot_msgs_genlisp probot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_msg_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)

### Generating Services
_generate_srv_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_srv_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_srv_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)
_generate_srv_nodejs(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
)

### Generating Module File
_generate_module_nodejs(probot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(probot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(probot_msgs_generate_messages probot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_nodejs _probot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_msgs_gennodejs)
add_dependencies(probot_msgs_gennodejs probot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_msg_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)

### Generating Services
_generate_srv_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_srv_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_srv_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)
_generate_srv_py(probot_msgs
  "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
)

### Generating Module File
_generate_module_py(probot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(probot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(probot_msgs_generate_messages probot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/InterfaceReturnCode.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ProbotStatus.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/Config.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshConfigSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SetOutputIO.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPointList.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/PredefinedPoint.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogJoint.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/DemoCtrl.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/JogPose.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/SFUVersionNum.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg/ControllerCtrl.msg" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/RefreshPointsSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/SFUCommandCtrl.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/srv/HeartbeatSrv.srv" NAME_WE)
add_dependencies(probot_msgs_generate_messages_py _probot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(probot_msgs_genpy)
add_dependencies(probot_msgs_genpy probot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS probot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/probot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(probot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(probot_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/probot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(probot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(probot_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/probot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(probot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(probot_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/probot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(probot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(probot_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/probot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(probot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(probot_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
