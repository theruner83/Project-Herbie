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
include librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/depend.make

# Include the progress variables for this target.
include librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/progress.make

# Include the compile flags for this target's objects.
include librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/flags.make

librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/rs-depth.c.o: librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/flags.make
librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/rs-depth.c.o: /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/C/depth/rs-depth.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/rs-depth.c.o"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/C/depth && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/rs-depth.dir/rs-depth.c.o   -c /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/C/depth/rs-depth.c

librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/rs-depth.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/rs-depth.dir/rs-depth.c.i"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/C/depth && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/C/depth/rs-depth.c > CMakeFiles/rs-depth.dir/rs-depth.c.i

librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/rs-depth.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/rs-depth.dir/rs-depth.c.s"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/C/depth && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/C/depth/rs-depth.c -o CMakeFiles/rs-depth.dir/rs-depth.c.s

# Object files for target rs-depth
rs__depth_OBJECTS = \
"CMakeFiles/rs-depth.dir/rs-depth.c.o"

# External object files for target rs-depth
rs__depth_EXTERNAL_OBJECTS =

librealsense-2.10.2/examples/C/depth/rs-depth: librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/rs-depth.c.o
librealsense-2.10.2/examples/C/depth/rs-depth: librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/build.make
librealsense-2.10.2/examples/C/depth/rs-depth: /home/fypbois/FYP_ws/devel/lib/librealsense2.so.2.10.2
librealsense-2.10.2/examples/C/depth/rs-depth: /usr/lib/x86_64-linux-gnu/libGL.so
librealsense-2.10.2/examples/C/depth/rs-depth: /usr/lib/x86_64-linux-gnu/libGLU.so
librealsense-2.10.2/examples/C/depth/rs-depth: /usr/lib/x86_64-linux-gnu/libglfw.so
librealsense-2.10.2/examples/C/depth/rs-depth: librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable rs-depth"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/C/depth && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rs-depth.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/build: librealsense-2.10.2/examples/C/depth/rs-depth

.PHONY : librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/build

librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/clean:
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/C/depth && $(CMAKE_COMMAND) -P CMakeFiles/rs-depth.dir/cmake_clean.cmake
.PHONY : librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/clean

librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/depend:
	cd /home/fypbois/FYP_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fypbois/FYP_ws/src /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/C/depth /home/fypbois/FYP_ws/build /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/C/depth /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : librealsense-2.10.2/examples/C/depth/CMakeFiles/rs-depth.dir/depend
