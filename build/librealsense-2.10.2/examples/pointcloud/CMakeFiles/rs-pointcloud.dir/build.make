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
include librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/depend.make

# Include the progress variables for this target.
include librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/progress.make

# Include the compile flags for this target's objects.
include librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/flags.make

librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.o: librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/flags.make
librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.o: /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/pointcloud/rs-pointcloud.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.o"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/pointcloud && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.o -c /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/pointcloud/rs-pointcloud.cpp

librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.i"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/pointcloud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/pointcloud/rs-pointcloud.cpp > CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.i

librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.s"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/pointcloud && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/pointcloud/rs-pointcloud.cpp -o CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.s

# Object files for target rs-pointcloud
rs__pointcloud_OBJECTS = \
"CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.o"

# External object files for target rs-pointcloud
rs__pointcloud_EXTERNAL_OBJECTS =

librealsense-2.10.2/examples/pointcloud/rs-pointcloud: librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/rs-pointcloud.cpp.o
librealsense-2.10.2/examples/pointcloud/rs-pointcloud: librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/build.make
librealsense-2.10.2/examples/pointcloud/rs-pointcloud: /home/fypbois/FYP_ws/devel/lib/librealsense2.so.2.10.2
librealsense-2.10.2/examples/pointcloud/rs-pointcloud: /usr/lib/x86_64-linux-gnu/libGL.so
librealsense-2.10.2/examples/pointcloud/rs-pointcloud: /usr/lib/x86_64-linux-gnu/libGLU.so
librealsense-2.10.2/examples/pointcloud/rs-pointcloud: /usr/lib/x86_64-linux-gnu/libglfw.so
librealsense-2.10.2/examples/pointcloud/rs-pointcloud: librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rs-pointcloud"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/pointcloud && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rs-pointcloud.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/build: librealsense-2.10.2/examples/pointcloud/rs-pointcloud

.PHONY : librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/build

librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/clean:
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/pointcloud && $(CMAKE_COMMAND) -P CMakeFiles/rs-pointcloud.dir/cmake_clean.cmake
.PHONY : librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/clean

librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/depend:
	cd /home/fypbois/FYP_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fypbois/FYP_ws/src /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/pointcloud /home/fypbois/FYP_ws/build /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/pointcloud /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : librealsense-2.10.2/examples/pointcloud/CMakeFiles/rs-pointcloud.dir/depend
