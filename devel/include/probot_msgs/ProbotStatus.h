// Generated by gencpp from file probot_msgs/ProbotStatus.msg
// DO NOT EDIT!


#ifndef PROBOT_MSGS_MESSAGE_PROBOTSTATUS_H
#define PROBOT_MSGS_MESSAGE_PROBOTSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace probot_msgs
{
template <class ContainerAllocator>
struct ProbotStatus_
{
  typedef ProbotStatus_<ContainerAllocator> Type;

  ProbotStatus_()
    : jointsPosition()
    , probotPose()
    , inputIOs()
    , outputIOs()
    , outputRelay()
    , inputButton()
    , inputLimitSensors()
    , inputHomeSensors()  {
    }
  ProbotStatus_(const ContainerAllocator& _alloc)
    : jointsPosition(_alloc)
    , probotPose(_alloc)
    , inputIOs(_alloc)
    , outputIOs(_alloc)
    , outputRelay(_alloc)
    , inputButton(_alloc)
    , inputLimitSensors(_alloc)
    , inputHomeSensors(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _jointsPosition_type;
  _jointsPosition_type jointsPosition;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _probotPose_type;
  _probotPose_type probotPose;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _inputIOs_type;
  _inputIOs_type inputIOs;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _outputIOs_type;
  _outputIOs_type outputIOs;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _outputRelay_type;
  _outputRelay_type outputRelay;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _inputButton_type;
  _inputButton_type inputButton;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _inputLimitSensors_type;
  _inputLimitSensors_type inputLimitSensors;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _inputHomeSensors_type;
  _inputHomeSensors_type inputHomeSensors;



  enum {
    IO_OFF = 0,
    IO_ON = 1,
  };


  typedef boost::shared_ptr< ::probot_msgs::ProbotStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::probot_msgs::ProbotStatus_<ContainerAllocator> const> ConstPtr;

}; // struct ProbotStatus_

typedef ::probot_msgs::ProbotStatus_<std::allocator<void> > ProbotStatus;

typedef boost::shared_ptr< ::probot_msgs::ProbotStatus > ProbotStatusPtr;
typedef boost::shared_ptr< ::probot_msgs::ProbotStatus const> ProbotStatusConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::probot_msgs::ProbotStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::probot_msgs::ProbotStatus_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::probot_msgs::ProbotStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::probot_msgs::ProbotStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_msgs::ProbotStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_msgs::ProbotStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_msgs::ProbotStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_msgs::ProbotStatus_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::probot_msgs::ProbotStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8545ed5a2953e67b3a5193c804789850";
  }

  static const char* value(const ::probot_msgs::ProbotStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8545ed5a2953e67bULL;
  static const uint64_t static_value2 = 0x3a5193c804789850ULL;
};

template<class ContainerAllocator>
struct DataType< ::probot_msgs::ProbotStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "probot_msgs/ProbotStatus";
  }

  static const char* value(const ::probot_msgs::ProbotStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::probot_msgs::ProbotStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] jointsPosition\n\
geometry_msgs/Pose probotPose\n\
\n\
bool[] inputIOs\n\
bool[] outputIOs\n\
bool[] outputRelay\n\
bool[] inputButton\n\
bool[] inputLimitSensors\n\
bool[] inputHomeSensors\n\
\n\
int8 IO_OFF = 0\n\
int8 IO_ON = 1\n\
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

  static const char* value(const ::probot_msgs::ProbotStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::probot_msgs::ProbotStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.jointsPosition);
      stream.next(m.probotPose);
      stream.next(m.inputIOs);
      stream.next(m.outputIOs);
      stream.next(m.outputRelay);
      stream.next(m.inputButton);
      stream.next(m.inputLimitSensors);
      stream.next(m.inputHomeSensors);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ProbotStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::probot_msgs::ProbotStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::probot_msgs::ProbotStatus_<ContainerAllocator>& v)
  {
    s << indent << "jointsPosition[]" << std::endl;
    for (size_t i = 0; i < v.jointsPosition.size(); ++i)
    {
      s << indent << "  jointsPosition[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.jointsPosition[i]);
    }
    s << indent << "probotPose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.probotPose);
    s << indent << "inputIOs[]" << std::endl;
    for (size_t i = 0; i < v.inputIOs.size(); ++i)
    {
      s << indent << "  inputIOs[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.inputIOs[i]);
    }
    s << indent << "outputIOs[]" << std::endl;
    for (size_t i = 0; i < v.outputIOs.size(); ++i)
    {
      s << indent << "  outputIOs[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.outputIOs[i]);
    }
    s << indent << "outputRelay[]" << std::endl;
    for (size_t i = 0; i < v.outputRelay.size(); ++i)
    {
      s << indent << "  outputRelay[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.outputRelay[i]);
    }
    s << indent << "inputButton[]" << std::endl;
    for (size_t i = 0; i < v.inputButton.size(); ++i)
    {
      s << indent << "  inputButton[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.inputButton[i]);
    }
    s << indent << "inputLimitSensors[]" << std::endl;
    for (size_t i = 0; i < v.inputLimitSensors.size(); ++i)
    {
      s << indent << "  inputLimitSensors[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.inputLimitSensors[i]);
    }
    s << indent << "inputHomeSensors[]" << std::endl;
    for (size_t i = 0; i < v.inputHomeSensors.size(); ++i)
    {
      s << indent << "  inputHomeSensors[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.inputHomeSensors[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROBOT_MSGS_MESSAGE_PROBOTSTATUS_H
