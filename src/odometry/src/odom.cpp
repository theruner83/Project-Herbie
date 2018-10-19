#include <ros/ros.h>
#include <tf/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Float32.h>


double motor_val =0, servo_val=0 ;
double ini_yaw = 0;
double head = 0, ini_head = 0;
double yaw = 0;
double wheelbase = 0.25;
double motor_val_d = 0 , servo_val_d = 0;
double lf = 0.17;
double lr = 0.09;
double x = 0.0;
double y = 0.0;
double th = 0.0;
double vth = 0;
double current_speed = 0;
double steering_angle = 0;
double angular_velocity = 0;
bool init = false;
bool init_yaw = false;

void motor_val_Callback(const std_msgs::Float32& motor_val_msg){
 // motor_val = motor_val_msg.data ; 
  //current_speed = -0.0128 * (motor_val) +19.2 ;
current_speed = motor_val_msg.data ;
init_yaw = true;
}

void servo_val_Callback(const std_msgs::Float32& servo_val_msg){
 // servo_val = servo_val_msg.data ; 
 // steering_angle = -0.04563345 * servo_val + 80.126691 ;
  steering_angle = servo_val_msg.data ;

}



void yaw_val_Callback(const std_msgs::Float32& yaw_val_msg){
if (init_yaw == true){  
if (init == false){
	init = true;
	head = yaw_val_msg.data ; 
	ini_head = head ;
	yaw = ini_yaw ; 
  }
  else {
	head = yaw_val_msg.data;
	double delta_yaw = head - ini_head + ini_yaw;
	if(delta_yaw >180){
	 delta_yaw= delta_yaw -360 ;
	}
	else if(delta_yaw < -180){
	 delta_yaw = delta_yaw +360;
	}
	
	yaw = delta_yaw;
   }
 }
}


int main(int argc, char** argv){
 
  ros::init(argc, argv, "odom");
  ros::NodeHandle n("~"); 

  n.param("x", x, 0.0);
  n.param("y", y, 0.0);  
  n.param("yaw_initial",ini_yaw, 0.0);

  ros::Publisher odom_pub = n.advertise<nav_msgs::Odometry>("odom", 1);
  ros::Publisher yaw_pub = n.advertise<std_msgs::Float32>("yaw_true", 1);
  ros::Subscriber motor_val = n.subscribe("/speed",2,motor_val_Callback);
  ros::Subscriber servo_val = n.subscribe("/steering_angle",2,servo_val_Callback);
  ros::Subscriber yaw_val = n.subscribe("/odom/yaw_val",1,yaw_val_Callback);


  tf::TransformBroadcaster odom_broadcaster;



  ros::Time current_time, last_time;
  current_time = ros::Time::now();
  last_time = ros::Time::now();
   
  

  ros::Rate r(100);
  while(n.ok()){

    ros::spinOnce();	
    current_time = ros::Time::now();
    angular_velocity = current_speed * tan(steering_angle) / wheelbase ; 
    
    //compute odometry in a typical way given the velocities of the robot
    double dt = (current_time - last_time).toSec();
    double beta = atan((lr/(lr+lf))*tan(steering_angle));
    double delta_x = current_speed * cos(yaw + beta) *dt ;
    double delta_y = current_speed * sin(yaw + beta) *dt ;
    //double delta_th = vth * dt;

    x += delta_x;
    y += delta_y;
    vth = current_speed *sin(beta)/lr;

    //since all odometry is 6DOF we'll need a quaternion created from yaw
    geometry_msgs::Quaternion odom_quat = tf::createQuaternionMsgFromYaw(yaw);

    //first, we'll publish the transform over tf
    geometry_msgs::TransformStamped odom_trans;
    odom_trans.header.stamp = current_time;
    odom_trans.header.frame_id = "odom";
    odom_trans.child_frame_id = "base_link";
    odom_trans.transform.translation.x = x;
    odom_trans.transform.translation.y = y;
    odom_trans.transform.translation.z = 0.0;
    odom_trans.transform.rotation = odom_quat;

    //send the transform
    odom_broadcaster.sendTransform(odom_trans);

    //next, we'll publish the odometry message over ROS
    nav_msgs::Odometry odom;
    odom.header.stamp = current_time;
    odom.header.frame_id = "odom";
    odom.child_frame_id = "base_link";

    //set the position
    odom.pose.pose.position.x = x;
    odom.pose.pose.position.y = y;
    odom.pose.pose.position.z = 0.0;
    odom.pose.pose.orientation = odom_quat;

    //set the velocity
    odom.child_frame_id = "base_link";
    odom.twist.twist.linear.x = current_speed;
    odom.twist.twist.linear.y = 0;
    odom.twist.twist.angular.z = vth;

    //publish the message
    odom_pub.publish(odom);
    std_msgs::Float32 yaw_true;
    yaw_true.data = yaw;
    yaw_pub.publish(yaw_true);
	
    last_time = current_time;
    r.sleep();
  }
}
