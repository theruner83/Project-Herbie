//Includes all the headers necessary to use the most common public pieces of the ROS system.
#include <ros/ros.h>
//Use image_transport for publishing and subscribing to images in ROS
#include <image_transport/image_transport.h>
//Use cv_bridge to convert between ROS and OpenCV Image formats
#include <cv_bridge/cv_bridge.h>
//Include some useful constants for image encoding. Refer to: http://www.ros.org/doc/api/sensor_msgs/html/namespacesensor__msgs_1_1image__encodings.html for more info.
#include <sensor_msgs/image_encodings.h>
//Include headers for OpenCV Image processing
#include <opencv2/imgproc/imgproc.hpp>
//Include headers for OpenCV GUI handling
#include <opencv2/highgui/highgui.hpp>
#include <iostream>
#include <stdio.h>
#include <opencv/cv.h>
#include <cvaux.h>
#include <std_msgs/Int32.h>
#include <math.h>
#include <cxcore.h>
#include <opencv2/core/core.hpp>
#include <vector>
#include <highgui.h>
#include "std_msgs/String.h"
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>     //make sure to include the relevant headerfiles
#include <opencv2/highgui/highgui.hpp>
#include "opencv2/opencv.hpp"
 
//Store all constants for image encodings in the enc namespace to be used later.
namespace enc = sensor_msgs::image_encodings;
using namespace std;
using namespace cv;
 
//Declare a string with the name of the window that we will create using OpenCV where processed images will be displayed.
static const char WINDOW[] = "Image Processed(red)";
//static const char WINDOW2[] = "Image Processed_2";
 
//Use method of ImageTransport to create image publisher
image_transport::Publisher pub;
std_msgs::Int32 red_num; 
ros::Publisher red;
//image_transport::Publisher pub_2;

int LowerH = 160;	//red hue vals 160-179 green hue vals 38-75
int LowerS = 100;		
int LowerV = 100;
int UpperH = 179;
int UpperS = 255;
int UpperV = 255;

void colorDetectionCallback(const sensor_msgs::ImageConstPtr& original_image)
{
    //Convert from the ROS image message to a CvImage suitable for working with OpenCV for processing
    cv_bridge::CvImagePtr cv_ptr, cv_ptr_2;
    try
    {
        //Always copy, returning a mutable CvImage
        //OpenCV expects color images to use BGR channel order.
        cv_ptr = cv_bridge::toCvCopy(original_image, enc::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
        //if there is an error during conversion, display it
        ROS_ERROR("tutorialROSOpenCV::main.cpp::cv_bridge exception: %s", e.what());
        return;
    }
	cv::Mat img_mask,img_hsv , img_mask_2 , img_hsv_2; 
	cv::cvtColor(cv_ptr->image,img_hsv,CV_BGR2HSV); //was cv_bgr2hsv
	//cv::cvtColor(cv_ptr_2->image,img_hsv_2,CV_BGR2HSV);
	//cv::cvtColor(cv_ptr->image,img_gray,CV_BGR2GRAY);
	cv::inRange(img_hsv,cv::Scalar(LowerH,LowerS,LowerV),cv::Scalar(UpperH,UpperS,UpperV),img_mask); 
	//cv::inRange(img_hsv_2,cv::Scalar(38,LowerS,LowerV),cv::Scalar(75,UpperS,UpperV),img_mask); 


	GaussianBlur( img_mask, img_mask, Size(9, 9), 2, 2 );
	//GaussianBlur( img_mask_2, img_mask_2, Size(9, 9), 2, 2 );

	int val = 0;
	int img = 0;
	for(int i=0;i < img_mask.cols; i++){
		for (int j=0; j < img_mask.rows; j++){
		img = img_mask.at<Vec3d>(j,i)[0];
		val = val + img;
 		}
	}

	if ( val / (img_mask.cols*img_mask.rows*255) > 0.3 ){
	 red_num.data = 1;
	 red.publish(red_num);
	}


	vector<Vec3f> v3fCircles, v3fCircles_2;

	 cv::HoughCircles(img_mask,v3fCircles,CV_HOUGH_GRADIENT,2,img_mask.rows / 4,100,50,10,800);  // algorithm for detecting circles  

  for (int i = 0; i < v3fCircles.size(); i++) {      // for each circle
               
   std::cout << "Ball position X = "<< v3fCircles[i][0]   // x position of center point of circle
    <<",\tY = "<< v3fCircles[i][1]        // y position of center point of circle
    <<",\tRadius = "<< v3fCircles[i][2]<< "\n";     // radius of circle

                    // draw small green circle at center of object detected
   cv::circle(img_mask,            // draw on original image
    cv::Point((int)v3fCircles[i][0], (int)v3fCircles[i][1]),  // center point of circle
    3,                // radius of circle in pixels
    cv::Scalar(0, 255, 0),           // draw green
    CV_FILLED);              // thickness

                    // draw red circle around object detected 
   cv::circle(img_mask,            // draw on original image
    cv::Point((int)v3fCircles[i][0], (int)v3fCircles[i][1]),  // center point of circle
    (int)v3fCircles[i][2],           // radius of circle in pixels
    cv::Scalar(0, 0, 255),           // draw red
    3);                // thickness
  } 


/////////////////
/*
 cv::HoughCircles(img_mask_2,v3fCircles_2,CV_HOUGH_GRADIENT,2,img_mask_2.rows / 4,100,50,10,800);  // algorithm for detecting circles  

  for (int i = 0; i < v3fCircles_2.size(); i++) {      // for each circle
               
   std::cout << "Ball position X = "<< v3fCircles_2[i][0]   // x position of center point of circle
    <<",\tY = "<< v3fCircles_2[i][1]        // y position of center point of circle
    <<",\tRadius = "<< v3fCircles_2[i][2]<< "\n";     // radius of circle

                    // draw small green circle at center of object detected
   cv::circle(img_mask_2,            // draw on original image
    cv::Point((int)v3fCircles_2[i][0], (int)v3fCircles_2[i][1]),  // center point of circle
    3,                // radius of circle in pixels
    cv::Scalar(0, 255, 0),           // draw green
    CV_FILLED);              // thickness

                    // draw red circle around object detected 
   cv::circle(img_mask_2,            // draw on original image
    cv::Point((int)v3fCircles_2[i][0], (int)v3fCircles_2[i][1]),  // center point of circle
    (int)v3fCircles_2[i][2],           // radius of circle in pixels
    cv::Scalar(0, 0, 255),           // draw red
    3);                // thickness
  } 

*/
    //Display the image using OpenCV
    cv::imshow(WINDOW, img_mask);
   
    //Add some delay in miliseconds. The function only works if there is at least one HighGUI window created and the window is active. If there are several HighGUI windows, any of them can be active.
    cv::waitKey(3);
    /**
    * The publish() function is how you send messages. The parameter
    * is the message object. The type of this object must agree with the type
    * given as a template parameter to the advertise<>() call, as was done
    * in the constructor in main().
    */
    //Convert the CvImage to a ROS image message and publish it on the "camera/image_processed" topic.
    pub.publish(cv_ptr->toImageMsg());
    
    
}

/*

void colorDetectionCallback_green(const sensor_msgs::ImageConstPtr& original_image)
{
    //Convert from the ROS image message to a CvImage suitable for working with OpenCV for processing
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
        //Always copy, returning a mutable CvImage
        //OpenCV expects color images to use BGR channel order.
        cv_ptr = cv_bridge::toCvCopy(original_image, enc::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
        //if there is an error during conversion, display it
        ROS_ERROR("tutorialROSOpenCV::main.cpp::cv_bridge exception: %s", e.what());
        return;
    }


cv::Mat img_mask,img_hsv , img_mask_2 , img_hsv_2; 
	cv::cvtColor(cv_ptr->image,img_hsv,CV_BGR2HSV); //was cv_bgr2hsv
	cv::cvtColor(cv_ptr->image,img_hsv_2,CV_BGR2HSV);
	
	cv::inRange(img_hsv,cv::Scalar(LowerH,LowerS,LowerV),cv::Scalar(UpperH,UpperS,UpperV),img_mask); 
	cv::inRange(img_hsv_2,cv::Scalar(38,LowerS,LowerV),cv::Scalar(75,UpperS,UpperV),img_mask); 


	GaussianBlur( img_mask, img_mask, Size(9, 9), 2, 2 );
	GaussianBlur( img_mask_2, img_mask_2, Size(9, 9), 2, 2 );


	vector<Vec3f> v3fCircles, v3fCircles_2;

	 cv::HoughCircles(img_mask,v3fCircles,CV_HOUGH_GRADIENT,2,img_mask.rows / 4,100,50,10,800);  // algorithm for detecting circles  

  for (int i = 0; i < v3fCircles.size(); i++) {      // for each circle
               
   std::cout << "Ball position X = "<< v3fCircles[i][0]   // x position of center point of circle
    <<",\tY = "<< v3fCircles[i][1]        // y position of center point of circle
    <<",\tRadius = "<< v3fCircles[i][2]<< "\n";     // radius of circle

                    // draw small green circle at center of object detected
   cv::circle(img_mask,            // draw on original image
    cv::Point((int)v3fCircles[i][0], (int)v3fCircles[i][1]),  // center point of circle
    3,                // radius of circle in pixels
    cv::Scalar(0, 255, 0),           // draw green
    CV_FILLED);              // thickness

                    // draw red circle around object detected 
   cv::circle(img_mask,            // draw on original image
    cv::Point((int)v3fCircles[i][0], (int)v3fCircles[i][1]),  // center point of circle
    (int)v3fCircles[i][2],           // radius of circle in pixels
    cv::Scalar(0, 0, 255),           // draw red
    3);                // thickness
  } 


/////////////////

 cv::HoughCircles(img_mask_2,v3fCircles_2,CV_HOUGH_GRADIENT,2,img_mask_2.rows / 4,100,50,10,800);  // algorithm for detecting circles  

  for (int i = 0; i < v3fCircles_2.size(); i++) {      // for each circle
               
   std::cout << "Ball position X = "<< v3fCircles_2[i][0]   // x position of center point of circle
    <<",\tY = "<< v3fCircles_2[i][1]        // y position of center point of circle
    <<",\tRadius = "<< v3fCircles_2[i][2]<< "\n";     // radius of circle

                    // draw small green circle at center of object detected
   cv::circle(img_mask_2,            // draw on original image
    cv::Point((int)v3fCircles_2[i][0], (int)v3fCircles_2[i][1]),  // center point of circle
    3,                // radius of circle in pixels
    cv::Scalar(0, 255, 0),           // draw green
    CV_FILLED);              // thickness

                    // draw red circle around object detected 
   cv::circle(img_mask_2,            // draw on original image
    cv::Point((int)v3fCircles_2[i][0], (int)v3fCircles_2[i][1]),  // center point of circle
    (int)v3fCircles_2[i][2],           // radius of circle in pixels
    cv::Scalar(0, 0, 255),           // draw red
    3);                // thickness
  } 


    //Display the image using OpenCV
    cv::imshow(WINDOW2, img_mask_2);
    
    //Add some delay in miliseconds. The function only works if there is at least one HighGUI window created and the window is active. If there are several HighGUI windows, any of them can be active.
    cv::waitKey(3);
    /**
    * The publish() function is how you send messages. The parameter
    * is the message object. The type of this object must agree with the type
    * given as a template parameter to the advertise<>() call, as was done
    * in the constructor in main().**/
    
    //Convert the CvImage to a ROS image message and publish it on the "camera/image_processed" topic.
  //  pub_2.publish(cv_ptr->toImageMsg());



//}






























//This function is called everytime a new image is published
void imageCallback(const sensor_msgs::ImageConstPtr& original_image)
{
    //Convert from the ROS image message to a CvImage suitable for working with OpenCV for processing
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
        //Always copy, returning a mutable CvImage
        //OpenCV expects color images to use BGR channel order.
        cv_ptr = cv_bridge::toCvCopy(original_image, enc::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
        //if there is an error during conversion, display it
        ROS_ERROR("tutorialROSOpenCV::main.cpp::cv_bridge exception: %s", e.what());
        return;
    }
 
    //Invert Image
    //Go through all the rows
    for(int i=0; i<cv_ptr->image.rows; i++)
    {
        //Go through all the columns
        for(int j=0; j<cv_ptr->image.cols; j++)
        {
            //Go through all the channels (b, g, r)
            for(int k=0; k<cv_ptr->image.channels(); k++)
            {
                //Invert the image by subtracting image data from 255               
                cv_ptr->image.data[i*cv_ptr->image.rows*4+j*3 + k] = 255-cv_ptr->image.data[i*cv_ptr->image.rows*4+j*3 + k];
            }
        }
    }
     
 
    //Display the image using OpenCV
    cv::imshow(WINDOW, cv_ptr->image);
    //Add some delay in miliseconds. The function only works if there is at least one HighGUI window created and the window is active. If there are several HighGUI windows, any of them can be active.
    cv::waitKey(3);
    /**
    * The publish() function is how you send messages. The parameter
    * is the message object. The type of this object must agree with the type
    * given as a template parameter to the advertise<>() call, as was done
    * in the constructor in main().
    */
    //Convert the CvImage to a ROS image message and publish it on the "camera/image_processed" topic.
        pub.publish(cv_ptr->toImageMsg());
}
 
/**
* This tutorial demonstrates simple image conversion between ROS image message and OpenCV formats and image processing
*/
int main(int argc, char **argv)
{
    /**
    * The ros::init() function needs to see argc and argv so that it can perform
    * any ROS arguments and name remapping that were provided at the command line. For programmatic
    * remappings you can use a different version of init() which takes remappings
    * directly, but for most command-line programs, passing argc and argv is the easiest
    * way to do it.  The third argument to init() is the name of the node. Node names must be unique in a running system.
    * The name used here must be a base name, ie. it cannot have a / in it.
    * You must call one of the versions of ros::init() before using any other
    * part of the ROS system.
    */
    ros::init(argc, argv, "image_processor");
    /**
    * NodeHandle is the main access point to communications with the ROS system.
    * The first NodeHandle constructed will fully initialize this node, and the last
    * NodeHandle destructed will close down the node.
    */
    ros::NodeHandle nh;
    //Create an ImageTransport instance, initializing it with our NodeHandle.
    image_transport::ImageTransport it(nh);
/*
	cv::namedWindow("Ball");
	cv::createTrackbar("LowerH","Ball",&LowerH,180,NULL);
	cv::createTrackbar("UpperH","Ball",&UpperH,180,NULL);
	cv::createTrackbar("LowerS","Ball",&LowerS,256,NULL);
	cv::createTrackbar("UpperS","Ball",&UpperS,256,NULL);
	cv::createTrackbar("LowerV","Ball",&LowerV,256,NULL);
	cv::createTrackbar("UpperV","Ball",&UpperV,256,NULL);
*/
    //OpenCV HighGUI call to create a display window on start-up.
    cv::namedWindow(WINDOW, CV_WINDOW_AUTOSIZE); //CV_WINDOW_AUTOSIZE
    
   // cv::namedWindow(WINDOW2, CV_WINDOW_AUTOSIZE);
    /**
    * Subscribe to the "camera/image_raw" base topic. The actual ROS topic subscribed to depends on which transport is used. 
    * In the default case, "raw" transport, the topic is in fact "camera/image_raw" with type sensor_msgs/Image. ROS will call 
    * the "imageCallback" function whenever a new image arrives. The 2nd argument is the queue size.
    * subscribe() returns an image_transport::Subscriber object, that you must hold on to until you want to unsubscribe. 
    * When the Subscriber object is destructed, it will automatically unsubscribe from the "camera/image_raw" base topic.
    */
    //image_transport::Subscriber sub = it.subscribe("camera/image_raw", 1, imageCallback);
    image_transport::Subscriber sub = it.subscribe("/image_raw", 1, colorDetectionCallback);
    //image_transport::Subscriber sub_2 = it.subscribe("/image_raw", 1, colorDetectionCallback_green);
    //OpenCV HighGUI call to destroy a display window on shut-down.
    cv::destroyWindow(WINDOW);
   // cv::destroyWindow(WINDOW2);
    /**
    * The advertise() function is how you tell ROS that you want to
    * publish on a given topic name. This invokes a call to the ROS
    * master node, which keeps a registry of who is publishing and who
    * is subscribing. After this advertise() call is made, the master
    * node will notify anyone who is trying to subscribe to this topic name,
    * and they will in turn negotiate a peer-to-peer connection with this
    * node.  advertise() returns a Publisher object which allows you to
    * publish messages on that topic through a call to publish().  Once
    * all copies of the returned Publisher object are destroyed, the topic
    * will be automatically unadvertised.
    *
    * The second parameter to advertise() is the size of the message queue
    * used for publishing messages.  If messages are published more quickly
    * than we can send them, the number here specifies how many messages to
    * buffer up before throwing some away.
    */
    pub = it.advertise("/image_processed", 1);
    red = nh.advertise<std_msgs::Int32>("/red_detect", 1);
	
   // pub_2 = it.advertise("/image_processed_green", 1);
    /**
    * In this application all user callbacks will be called from within the ros::spin() call. 
    * ros::spin() will not return until the node has been shutdown, either through a call 
    * to ros::shutdown() or a Ctrl-C.
    */
    ros::spin();
    //ROS_INFO is the replacement for printf/cout.
    ROS_INFO("tutorialROSOpenCV::main.cpp::No error.");
 
}
