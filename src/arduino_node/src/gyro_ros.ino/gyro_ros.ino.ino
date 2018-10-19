/*
 * rosserial Publisher Example
 * Prints "hello world!"
 */

#include <ros.h>
#include <std_msgs/Float32.h>
#include <CurieIMU.h>
#include <MadgwickAHRS.h>
Madgwick filter;
unsigned long microsPerReading, microsPrevious;
float accelScale, gyroScale;

ros::NodeHandle  nh;

std_msgs::Float32 yaw_msg;
std_msgs::Float32 pitch_msg;
std_msgs::Float32 roll_msg;


ros::Publisher pub_yaw("/odom/yaw_val", &yaw_msg);
ros::Publisher pub_pitch("pitch_val", &pitch_msg);
ros::Publisher pub_roll("roll_val", &roll_msg);


//////////////////////////////////////////////// FUNCTIONS /////////////////////////
float convertRawAcceleration(int aRaw) {
  // since we are using 2G range
  // -2g maps to a raw value of -32768
  // +2g maps to a raw value of 32767
 
  float a = (aRaw * 2.0) / 32768.0;
  return a;
}

float convertRawGyro(int gRaw) {
  // since we are using 250 degrees/seconds range
  // -250 maps to a raw value of -32768
  // +250 maps to a raw value of 32767
 
  float g = (gRaw * 250.0) / 32768.0;
  return g;
}

/////////////////////////////////////////////////////////////////////////////////////////////

void setup()
{
  nh.initNode();
  CurieIMU.begin();
  CurieIMU.setGyroRate(25);
  CurieIMU.setAccelerometerRate(25);
  CurieIMU.autoCalibrateGyroOffset(); 
  CurieIMU.getGyroOffset(Z_AXIS) ;
  filter.begin(25);
  CurieIMU.setAccelerometerRange(2);
  CurieIMU.setGyroRange(250);

  microsPerReading = 1000000 / 25;
  microsPrevious = micros();
  
  nh.advertise(pub_yaw);
  nh.advertise(pub_pitch);
  nh.advertise(pub_roll);
}

void loop()
{
  int aix, aiy, aiz;
  int gix, giy, giz;
  float ax, ay, az;
  float gx, gy, gz;
  float roll, pitch, heading;
  unsigned long microsNow;

  microsNow = micros();
  if (microsNow - microsPrevious >= microsPerReading) {

    // read raw data from CurieIMU
    CurieIMU.readMotionSensor(aix, aiy, aiz, gix, giy, giz);

    // convert from raw data to gravity and degrees/second units
    ax = convertRawAcceleration(aix);
    ay = convertRawAcceleration(aiy);
    az = convertRawAcceleration(aiz);
    gx = convertRawGyro(gix);
    gy = convertRawGyro(giy);
    gz = convertRawGyro(giz);

    // update the filter, which computes orientation
    filter.updateIMU(gx, gy, gz, ax, ay, az);

    // print the heading, pitch and roll
    roll = filter.getRoll();
    pitch = filter.getPitch();
    heading = filter.getYaw();

    yaw_msg.data = heading;
    roll_msg.data = roll;
    pitch_msg.data = pitch ;
  
    pub_yaw.publish( &yaw_msg );
    pub_roll.publish( &roll_msg );
    pub_pitch.publish( &pitch_msg );
    microsPrevious = microsPrevious + microsPerReading;
  }

    nh.spinOnce();
}
