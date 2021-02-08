// Generated by gencpp from file probot_msgs/RefreshConfigSrvResponse.msg
// DO NOT EDIT!


#ifndef PROBOT_MSGS_MESSAGE_REFRESHCONFIGSRVRESPONSE_H
#define PROBOT_MSGS_MESSAGE_REFRESHCONFIGSRVRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <probot_msgs/InterfaceReturnCode.h>
#include <probot_msgs/Config.h>

namespace probot_msgs
{
template <class ContainerAllocator>
struct RefreshConfigSrvResponse_
{
  typedef RefreshConfigSrvResponse_<ContainerAllocator> Type;

  RefreshConfigSrvResponse_()
    : code()
    , config_feedback()  {
    }
  RefreshConfigSrvResponse_(const ContainerAllocator& _alloc)
    : code(_alloc)
    , config_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::probot_msgs::InterfaceReturnCode_<ContainerAllocator>  _code_type;
  _code_type code;

   typedef  ::probot_msgs::Config_<ContainerAllocator>  _config_feedback_type;
  _config_feedback_type config_feedback;





  typedef boost::shared_ptr< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> const> ConstPtr;

}; // struct RefreshConfigSrvResponse_

typedef ::probot_msgs::RefreshConfigSrvResponse_<std::allocator<void> > RefreshConfigSrvResponse;

typedef boost::shared_ptr< ::probot_msgs::RefreshConfigSrvResponse > RefreshConfigSrvResponsePtr;
typedef boost::shared_ptr< ::probot_msgs::RefreshConfigSrvResponse const> RefreshConfigSrvResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace probot_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'probot_msgs': ['/home/akingse/catkin_ws/src/PROBOT_Anno/probot_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "93a3ac22a2881a5f1317319c544081ba";
  }

  static const char* value(const ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x93a3ac22a2881a5fULL;
  static const uint64_t static_value2 = 0x1317319c544081baULL;
};

template<class ContainerAllocator>
struct DataType< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "probot_msgs/RefreshConfigSrvResponse";
  }

  static const char* value(const ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "probot_msgs/InterfaceReturnCode code\n\
probot_msgs/Config config_feedback\n\
\n\
\n\
================================================================================\n\
MSG: probot_msgs/InterfaceReturnCode\n\
# App Interface return codes for requests.  All App Interface service\n\
# replies are required to have a return code indicating success or failure\n\
# Specific return codes for different failure should be negative.\n\
int8 val\n\
\n\
int8 SUCCESS = 1\n\
int8 FAILURE = -1\n\
================================================================================\n\
MSG: probot_msgs/Config\n\
# The Config message contains system configuration data\n\
\n\
# The output log level for controller\n\
int8 controller_log_level\n\
bool init_with_all_zero_pos\n\
\n\
# The zero calibration parameters\n\
bool        enable_joint_calibration\n\
float32[]   seneor_position\n\
float32[]   speed_to_sensor\n\
float32[]   speed_to_zero\n\
\n\
# The tool's relative pose to end-effector(tool0)\n\
# This is used to jog tool instead of end-effector\n\
# If it is to jog end-effector, set pose_to_eef to 0, that is (0,0,0)(0,0,0,1)\n\
geometry_msgs/Pose[] pose_to_eef\n\
\n\
# The bit-map mask of valid fields which this message contains\n\
int32 mask\n\
\n\
int32 MASK_LOGLEVEL          = 1\n\
int32 MASK_ZERO_CALIBRATION  = 2\n\
int32 MASK_TOOL_POSE         = 4\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.code);
      stream.next(m.config_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RefreshConfigSrvResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::probot_msgs::RefreshConfigSrvResponse_<ContainerAllocator>& v)
  {
    s << indent << "code: ";
    s << std::endl;
    Printer< ::probot_msgs::InterfaceReturnCode_<ContainerAllocator> >::stream(s, indent + "  ", v.code);
    s << indent << "config_feedback: ";
    s << std::endl;
    Printer< ::probot_msgs::Config_<ContainerAllocator> >::stream(s, indent + "  ", v.config_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROBOT_MSGS_MESSAGE_REFRESHCONFIGSRVRESPONSE_H
