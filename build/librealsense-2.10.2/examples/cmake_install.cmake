# Install script for directory: /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/fypbois/FYP_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/software-device/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/capture/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/save-to-disk/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/multicam/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/pointcloud/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/sensor-control/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/measure/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/C/depth/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/C/color/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/C/distance/cmake_install.cmake")
  include("/home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/post-processing/cmake_install.cmake")

endif()

