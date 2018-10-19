#!/usr/bin/env python

import rospy, math
from geometry_msgs.msg import Twist
from std_msgs.msg import Float32


def convert_trans_rot_vel_to_steering_angle(v, omega, wheelbase):
  if omega == 0 or v == 0:
    return 0

  radius = v / omega
  return math.atan(wheelbase / radius)


def cmd_callback(data):
  wheelbase = 0.25
  global pub_angle
  global pub_speed
  
  v = data.linear.x
  steering = convert_trans_rot_vel_to_steering_angle(v, data.angular.z, wheelbase)

  steering_angle = steering
  speed = v
  pub_angle.publish(steering_angle)
  pub_speed.publish(speed)
  

  

if __name__ == '__main__': 
  try:
    
    rospy.init_node('cmd_vel_to_speed_angle')
        
    twist_cmd_topic = rospy.get_param('~twist_cmd_topic', '/cmd_vel')
    speed_topic = rospy.get_param('~speed_topic', '/speed')
    steering_angle_topic = rospy.get_param('~steering_angle_topic', '/steering_angle')   
  
    
    rospy.Subscriber(twist_cmd_topic, Twist, cmd_callback, queue_size=2)
    pub_speed = rospy.Publisher(speed_topic, Float32 , queue_size=3)
    pub_angle = rospy.Publisher(steering_angle_topic, Float32 , queue_size=3)
    
    
    rospy.spin()
    
  except rospy.ROSInterruptException:
    pass
