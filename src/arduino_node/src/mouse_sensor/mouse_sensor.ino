/*
 * rosserial PubSub Example
 * Prints "hello world!" and toggles led
 */

 // CHECK ROS.H IN ARDUINO 1.8.5/LIBRARIES/ROS_LIB AND CHANGE BUFFER SIZE IF SUBSCRIBERS ARE NEEDED
 
#include <ros.h>
#include <Arduino.h>
#include <std_msgs/Float32.h>
#include <ps2.h>


ros::NodeHandle  nh;
std_msgs::Float32 x_msg;
std_msgs::Float32 y_msg;
ros::Publisher x_position("x_position", &x_msg);
ros::Publisher y_position("y_position", &y_msg);
PS2 mouse(11, 12); // clock pin, data pin
float absy_add = 0.0 , absx_add = 0.0 , absx = 0.0 , absy = 0.0 ,  scaler = 50000.0 ;


// FUNCTIONS
void mouse_init()
{
  mouse.write(0xff);  // reset
  mouse.read();  // ack byte
  mouse.read();  // blank */
  mouse.read();  // blank */
  mouse.write(0xf0);  // remote mode
  mouse.read();  // ack
  delayMicroseconds(100);
}

void setup()
{
  
  nh.initNode();
  mouse_init();
  nh.advertise(x_position);
  nh.advertise(y_position);
  
         
}



void loop()
{
  char mstat ;
  char mx ;
  char my ;
  float imx;
  float imy;

  /* get a reading from the mouse */
  mouse.write(0xeb);  // give me data!
  mouse.read();      // ignore ack
  mstat = mouse.read();
  mx = mouse.read();
  my = mouse.read();

  // Get x translation
  imx = mx ;
  absx = (absx +imx) / scaler ;
  absx_add = absx +absx_add;

    // Get x translation
  imy = my ;
  absy = (absy +imy) / scaler ;
  absy_add = absy +absy_add;

  x_msg.data = absx_add ; 
  y_msg.data = absy_add ; 

  x_position.publish( &x_msg );
  y_position.publish( &y_msg );
  
  nh.spinOnce();
  delay(100);;
}
