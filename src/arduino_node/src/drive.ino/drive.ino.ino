  #include <ros.h>
#include <Servo.h>
#include <Arduino.h>
#include <std_msgs/Float32.h>
#include <math.h>
#include <std_msgs/String.h>




ros::NodeHandle nh;





// Steering Variables
Servo Steering; 
double steering_angle = 0 ;
double servo_steer_double = 0;
int servo_steer_int = 0;
int last_servo_steer_int = 0;

// Motor Variables
Servo ESC;
double speed_val = 0 ;
double motor_val_double = 0;
int motor_val_int = 0;
int last_motor_val_int = 0;

// Function Prototype
//void onSteeringCommand(const std_msgs::Float32 &cmd_msg);
//void onSpeedCommand(const std_msgs::Float32 &cmd_msg);



// Callback functions
void onSteeringCommand( const std_msgs::Float32& angle_msg) {
    // scale it to use it with the servo (value between 0 and 180)
    
   steering_angle = angle_msg.data;

   servo_steer_double = -13.43 * steering_angle +1536.16;

   servo_steer_int = (int) servo_steer_double;

    if (last_servo_steer_int!= servo_steer_int) {
        Steering.writeMicroseconds(servo_steer_int);
    }
        last_servo_steer_int  = servo_steer_int;
}


void onSpeedCommand( const std_msgs::Float32& speed_msg) {
    
   speed_val  = speed_msg.data;

    motor_val_double = (-20136 * speed_val + 1587.29;

    motor_val_int = (int) motor_val_double;
    
    if (last_motor_val_int!= motor_val_int) {
        ESC.writeMicroseconds(motor_val_int);
    }
    last_motor_val_int  = motor_val_int;
}

// Subscribers
ros::Subscriber<std_msgs::Float32> steeringCommand("steering_angle", &onSteeringCommand);
ros::Subscriber<std_msgs::Float32> speedCommand("speed", &onSpeedCommand);



void setup() {
// put your setup code here, to run once:
  nh.initNode();
  nh.subscribe(steeringCommand);
  nh.subscribe(speedCommand);
  ESC.attach(9);    
  Steering.attach(5);
 
}

void loop() {
  // put your main code here, to run repeatedly:
 
 nh.spinOnce();
 delay(1);
}
