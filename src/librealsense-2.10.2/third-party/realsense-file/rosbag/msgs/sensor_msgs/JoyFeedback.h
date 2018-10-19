// Generated by gencpp from file sensor_msgs/JoyFeedback.msg
// DO NOT EDIT!


#ifndef SENSOR_MSGS_MESSAGE_JOYFEEDBACK_H
#define SENSOR_MSGS_MESSAGE_JOYFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sensor_msgs
{
template <class ContainerAllocator>
struct JoyFeedback_
{
  typedef JoyFeedback_<ContainerAllocator> Type;

  JoyFeedback_()
    : type(0)
    , id(0)
    , intensity(0.0)  {
    }
  JoyFeedback_(const ContainerAllocator& _alloc)
    : type(0)
    , id(0)
    , intensity(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _type_type;
  _type_type type;

   typedef uint8_t _id_type;
  _id_type id;

   typedef float _intensity_type;
  _intensity_type intensity;


    enum { TYPE_LED = 0u };
     enum { TYPE_RUMBLE = 1u };
     enum { TYPE_BUZZER = 2u };
 

  typedef boost::shared_ptr< ::sensor_msgs::JoyFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sensor_msgs::JoyFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct JoyFeedback_

typedef ::sensor_msgs::JoyFeedback_<std::allocator<void> > JoyFeedback;

typedef boost::shared_ptr< ::sensor_msgs::JoyFeedback > JoyFeedbackPtr;
typedef boost::shared_ptr< ::sensor_msgs::JoyFeedback const> JoyFeedbackConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sensor_msgs::JoyFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sensor_msgs::JoyFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace sensor_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'sensor_msgs': ['/tmp/binarydeb/ros-kinetic-sensor-msgs-1.12.5/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::sensor_msgs::JoyFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sensor_msgs::JoyFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_msgs::JoyFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sensor_msgs::JoyFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_msgs::JoyFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sensor_msgs::JoyFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sensor_msgs::JoyFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f4dcd73460360d98f36e55ee7f2e46f1";
  }

  static const char* value(const ::sensor_msgs::JoyFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf4dcd73460360d98ULL;
  static const uint64_t static_value2 = 0xf36e55ee7f2e46f1ULL;
};

template<class ContainerAllocator>
struct DataType< ::sensor_msgs::JoyFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/JoyFeedback";
  }

  static const char* value(const ::sensor_msgs::JoyFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sensor_msgs::JoyFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Declare of the type of feedback\n\
uint8 TYPE_LED    = 0\n\
uint8 TYPE_RUMBLE = 1\n\
uint8 TYPE_BUZZER = 2\n\
\n\
uint8 type\n\
\n\
# This will hold an id number for each type of each feedback.\n\
# Example, the first led would be id=0, the second would be id=1\n\
uint8 id\n\
\n\
# Intensity of the feedback, from 0.0 to 1.0, inclusive.  If device is\n\
# actually binary, driver should treat 0<=x<0.5 as off, 0.5<=x<=1 as on.\n\
float32 intensity\n\
\n\
";
  }

  static const char* value(const ::sensor_msgs::JoyFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sensor_msgs::JoyFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.type);
      stream.next(m.id);
      stream.next(m.intensity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JoyFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sensor_msgs::JoyFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sensor_msgs::JoyFeedback_<ContainerAllocator>& v)
  {
    s << indent << "type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.type);
    s << indent << "id: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.id);
    s << indent << "intensity: ";
    Printer<float>::stream(s, indent + "  ", v.intensity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SENSOR_MSGS_MESSAGE_JOYFEEDBACK_H
