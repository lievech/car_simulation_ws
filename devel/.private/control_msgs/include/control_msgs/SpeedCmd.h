// Generated by gencpp from file control_msgs/SpeedCmd.msg
// DO NOT EDIT!


#ifndef CONTROL_MSGS_MESSAGE_SPEEDCMD_H
#define CONTROL_MSGS_MESSAGE_SPEEDCMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <control_msgs/ThrottleCmd.h>
#include <control_msgs/BrakeCmd.h>

namespace control_msgs
{
template <class ContainerAllocator>
struct SpeedCmd_
{
  typedef SpeedCmd_<ContainerAllocator> Type;

  SpeedCmd_()
    : header()
    , throttle_cmd()
    , brake_cmd()  {
    }
  SpeedCmd_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , throttle_cmd(_alloc)
    , brake_cmd(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::control_msgs::ThrottleCmd_<ContainerAllocator>  _throttle_cmd_type;
  _throttle_cmd_type throttle_cmd;

   typedef  ::control_msgs::BrakeCmd_<ContainerAllocator>  _brake_cmd_type;
  _brake_cmd_type brake_cmd;





  typedef boost::shared_ptr< ::control_msgs::SpeedCmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::control_msgs::SpeedCmd_<ContainerAllocator> const> ConstPtr;

}; // struct SpeedCmd_

typedef ::control_msgs::SpeedCmd_<std::allocator<void> > SpeedCmd;

typedef boost::shared_ptr< ::control_msgs::SpeedCmd > SpeedCmdPtr;
typedef boost::shared_ptr< ::control_msgs::SpeedCmd const> SpeedCmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::control_msgs::SpeedCmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::control_msgs::SpeedCmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace control_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'sensor_driver_msgs': ['/home/lhn/hhh_ws/src/car_simulation_interface/msgs/sensor_driver_msgs/msg'], 'control_msgs': ['/home/lhn/hhh_ws/src/car_simulation_interface/msgs/control_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::control_msgs::SpeedCmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::control_msgs::SpeedCmd_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::control_msgs::SpeedCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::control_msgs::SpeedCmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control_msgs::SpeedCmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::control_msgs::SpeedCmd_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::control_msgs::SpeedCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "351e584fbda2b6662ef82b45d8c46b5f";
  }

  static const char* value(const ::control_msgs::SpeedCmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x351e584fbda2b666ULL;
  static const uint64_t static_value2 = 0x2ef82b45d8c46b5fULL;
};

template<class ContainerAllocator>
struct DataType< ::control_msgs::SpeedCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "control_msgs/SpeedCmd";
  }

  static const char* value(const ::control_msgs::SpeedCmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::control_msgs::SpeedCmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
control_msgs/ThrottleCmd throttle_cmd\n\
control_msgs/BrakeCmd brake_cmd\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: control_msgs/ThrottleCmd\n\
Header header\n\
float32 throttle\n\
\n\
\n\
\n\
================================================================================\n\
MSG: control_msgs/BrakeCmd\n\
Header header\n\
float32 brake\n\
\n\
";
  }

  static const char* value(const ::control_msgs::SpeedCmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::control_msgs::SpeedCmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.throttle_cmd);
      stream.next(m.brake_cmd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SpeedCmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::control_msgs::SpeedCmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::control_msgs::SpeedCmd_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "throttle_cmd: ";
    s << std::endl;
    Printer< ::control_msgs::ThrottleCmd_<ContainerAllocator> >::stream(s, indent + "  ", v.throttle_cmd);
    s << indent << "brake_cmd: ";
    s << std::endl;
    Printer< ::control_msgs::BrakeCmd_<ContainerAllocator> >::stream(s, indent + "  ", v.brake_cmd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CONTROL_MSGS_MESSAGE_SPEEDCMD_H
