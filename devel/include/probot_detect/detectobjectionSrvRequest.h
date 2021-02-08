// Generated by gencpp from file probot_detect/detectobjectionSrvRequest.msg
// DO NOT EDIT!


#ifndef PROBOT_DETECT_MESSAGE_DETECTOBJECTIONSRVREQUEST_H
#define PROBOT_DETECT_MESSAGE_DETECTOBJECTIONSRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace probot_detect
{
template <class ContainerAllocator>
struct detectobjectionSrvRequest_
{
  typedef detectobjectionSrvRequest_<ContainerAllocator> Type;

  detectobjectionSrvRequest_()
    : objectType(0)  {
    }
  detectobjectionSrvRequest_(const ContainerAllocator& _alloc)
    : objectType(0)  {
  (void)_alloc;
    }



   typedef int32_t _objectType_type;
  _objectType_type objectType;



  enum {
    ALL_OBJECT = 1,
    RED_OBJECT = 2,
    GREEN_OBJECT = 3,
    BLUE_OBJECT = 4,
    BLACK_OBJECT = 5,
    TO_DETECT = 6,
  };


  typedef boost::shared_ptr< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct detectobjectionSrvRequest_

typedef ::probot_detect::detectobjectionSrvRequest_<std::allocator<void> > detectobjectionSrvRequest;

typedef boost::shared_ptr< ::probot_detect::detectobjectionSrvRequest > detectobjectionSrvRequestPtr;
typedef boost::shared_ptr< ::probot_detect::detectobjectionSrvRequest const> detectobjectionSrvRequestConstPtr;

// constants requiring out of line definition

   

   

   

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace probot_detect

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cb621a0964162d413a990e8fc694b09f";
  }

  static const char* value(const ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcb621a0964162d41ULL;
  static const uint64_t static_value2 = 0x3a990e8fc694b09fULL;
};

template<class ContainerAllocator>
struct DataType< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "probot_detect/detectobjectionSrvRequest";
  }

  static const char* value(const ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
int32 ALL_OBJECT    = 1\n\
int32 RED_OBJECT    = 2\n\
int32 GREEN_OBJECT  = 3\n\
int32 BLUE_OBJECT   = 4\n\
int32 BLACK_OBJECT  = 5\n\
\n\
int32 TO_DETECT     = 6\n\
\n\
\n\
int32 objectType\n\
\n\
";
  }

  static const char* value(const ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.objectType);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct detectobjectionSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::probot_detect::detectobjectionSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "objectType: ";
    Printer<int32_t>::stream(s, indent + "  ", v.objectType);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PROBOT_DETECT_MESSAGE_DETECTOBJECTIONSRVREQUEST_H
