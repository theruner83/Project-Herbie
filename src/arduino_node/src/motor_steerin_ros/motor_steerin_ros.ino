#include <ros.h>
#include <std_msgs/Int32MultiArray.h>
#include "std_msgs/MultiArrayLayout.h"
#include "std_msgs/MultiArrayDimension.h"
#include <Servo.h>
#include <Arduino.h>

int Evalue=1500; // max of 1000 for forward and max of 2000 for back////////////////////// 1500 is middle
int Svalue=1200; // max of 1950 for left and max of 1050 for right/////////////////////// 1500 is middle
String MyString;
String Type;
String Val;
int Value=0;
int TypeInt=0;
ros::NodeHandle nh;

Servo ESC;
Servo Steering; 

void messageCb( const std_msgs::Int32MultiArray& array){
  TypeInt = array.data[0] ; 
  
  
  switch (TypeInt) {

       case 0:
         Evalue=array.data[1];
  ESC.writeMicroseconds(Evalue);
  //digitalWrite(13,HIGH);
         break;
       case 1:
         Svalue=array.data[1];
  Steering.writeMicroseconds(Svalue);
  //digitalWrite(13,LOW);
         break;
       default:
        break;

  }


}
  




ros::Subscriber<std_msgs::Int32MultiArray> sub("string", &messageCb );



void setup()
{
  //pinMode(13, OUTPUT);
  //pinMode(2, OUTPUT);
  ESC.attach(9);// attached to pin 9 I just do this with 1 Servo
 ESC.writeMicroseconds(1500);
  Steering.attach(5);
  
  //digitalWrite(2,HIGH);
 /*
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode(11, OUTPUT);
  pinMode(12, OUTPUT);
  */
  nh.initNode();
  nh.subscribe(sub);
}



void loop (){

/*

digitalWrite(8, HIGH);
digitalWrite(9, HIGH);
digitalWrite(10, HIGH);
digitalWrite(11, HIGH);
digitalWrite(12, HIGH);

delay(1000);

digitalWrite(8, LOW);
digitalWrite(9, LOW);
digitalWrite(10, LOW);
digitalWrite(11, LOW);
digitalWrite(12, LOW);

 delay(1000);

*/
/*
delay(5000);

//Steering.writeMicroseconds(1540);
delay(1);
ESC.writeMicroseconds(Evalue);

delay(1500);



//Steering.writeMicroseconds(1350);
//delay(1);
//ESC.writeMicroseconds(Evalue);


//delay(7000);

ESC.writeMicroseconds(1539);
//delay(1);
//Steering.writeMicroseconds(1569);

delay(60000);
*/
nh.spinOnce();


}
