# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fypbois/FYP_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fypbois/FYP_ws/build

# Include any dependencies generated for this target.
include librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/depend.make

# Include the progress variables for this target.
include librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/progress.make

# Include the compile flags for this target's objects.
include librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/flags.make

librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.o: librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/flags.make
librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.o: /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/sensor-control/rs-sensor-control.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.o"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/sensor-control && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.o -c /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/sensor-control/rs-sensor-control.cpp

librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.i"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/sensor-control && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/sensor-control/rs-sensor-control.cpp > CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.i

librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.s"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/sensor-control && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/sensor-control/rs-sensor-control.cpp -o CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.s

# Object files for target rs-sensor-control
rs__sensor__control_OBJECTS = \
"CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.o"

# External object files for target rs-sensor-control
rs__sensor__control_EXTERNAL_OBJECTS =

librealsense-2.10.2/examples/sensor-control/rs-sensor-control: librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/rs-sensor-control.cpp.o
librealsense-2.10.2/examples/sensor-control/rs-sensor-control: librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/build.make
librealsense-2.10.2/examples/sensor-control/rs-sensor-control: /home/fypbois/FYP_ws/devel/lib/librealsense2.so.2.10.2
librealsense-2.10.2/examples/sensor-control/rs-sensor-control: /usr/lib/x86_64-linux-gnu/libGL.so
librealsense-2.10.2/examples/sensor-control/rs-sensor-control: /usr/lib/x86_64-linux-gnu/libGLU.so
librealsense-2.10.2/examples/sensor-control/rs-sensor-control: /usr/lib/x86_64-linux-gnu/libglfw.so
librealsense-2.10.2/examples/sensor-control/rs-sensor-control: librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rs-sensor-control"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/sensor-control && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rs-sensor-control.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/build: librealsense-2.10.2/examples/sensor-control/rs-sensor-control

.PHONY : librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/build

librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/clean:
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/sensor-control && $(CMAKE_COMMAND) -P CMakeFiles/rs-sensor-control.dir/cmake_clean.cmake
.PHONY : librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/clean

librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/depend:
	cd /home/fypbois/FYP_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fypbois/FYP_ws/src /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/sensor-control /home/fypbois/FYP_ws/build /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/sensor-control /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : librealsense-2.10.2/examples/sensor-control/CMakeFiles/rs-sensor-control.dir/depend

