# Install script for directory: /home/fypbois/FYP_ws/src/librealsense-2.10.2/tools/enumerate-devices

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/fypbois/FYP_ws/install/bin/rs-enumerate-devices" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/fypbois/FYP_ws/install/bin/rs-enumerate-devices")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/fypbois/FYP_ws/install/bin/rs-enumerate-devices"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/fypbois/FYP_ws/install/bin/rs-enumerate-devices")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/fypbois/FYP_ws/install/bin" TYPE EXECUTABLE FILES "/home/fypbois/FYP_ws/build/librealsense-2.10.2/tools/enumerate-devices/rs-enumerate-devices")
  if(EXISTS "$ENV{DESTDIR}/home/fypbois/FYP_ws/install/bin/rs-enumerate-devices" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/fypbois/FYP_ws/install/bin/rs-enumerate-devices")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/fypbois/FYP_ws/install/bin/rs-enumerate-devices"
         OLD_RPATH "/home/fypbois/FYP_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/fypbois/FYP_ws/install/bin/rs-enumerate-devices")
    endif()
  endif()
endif()

