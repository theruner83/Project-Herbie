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
include librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/depend.make

# Include the progress variables for this target.
include librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/progress.make

# Include the compile flags for this target's objects.
include librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/flags.make

librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-live.cpp.o: librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/flags.make
librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-live.cpp.o: /home/fypbois/FYP_ws/src/librealsense-2.10.2/unit-tests/unit-tests-live.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-live.cpp.o"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/live-test.dir/unit-tests-live.cpp.o -c /home/fypbois/FYP_ws/src/librealsense-2.10.2/unit-tests/unit-tests-live.cpp

librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-live.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/live-test.dir/unit-tests-live.cpp.i"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/unit-tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fypbois/FYP_ws/src/librealsense-2.10.2/unit-tests/unit-tests-live.cpp > CMakeFiles/live-test.dir/unit-tests-live.cpp.i

librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-live.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/live-test.dir/unit-tests-live.cpp.s"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/unit-tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fypbois/FYP_ws/src/librealsense-2.10.2/unit-tests/unit-tests-live.cpp -o CMakeFiles/live-test.dir/unit-tests-live.cpp.s

librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-main.cpp.o: librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/flags.make
librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-main.cpp.o: /home/fypbois/FYP_ws/src/librealsense-2.10.2/unit-tests/unit-tests-main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-main.cpp.o"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/unit-tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/live-test.dir/unit-tests-main.cpp.o -c /home/fypbois/FYP_ws/src/librealsense-2.10.2/unit-tests/unit-tests-main.cpp

librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/live-test.dir/unit-tests-main.cpp.i"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/unit-tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fypbois/FYP_ws/src/librealsense-2.10.2/unit-tests/unit-tests-main.cpp > CMakeFiles/live-test.dir/unit-tests-main.cpp.i

librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/live-test.dir/unit-tests-main.cpp.s"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/unit-tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fypbois/FYP_ws/src/librealsense-2.10.2/unit-tests/unit-tests-main.cpp -o CMakeFiles/live-test.dir/unit-tests-main.cpp.s

# Object files for target live-test
live__test_OBJECTS = \
"CMakeFiles/live-test.dir/unit-tests-live.cpp.o" \
"CMakeFiles/live-test.dir/unit-tests-main.cpp.o"

# External object files for target live-test
live__test_EXTERNAL_OBJECTS =

librealsense-2.10.2/unit-tests/live-test: librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-live.cpp.o
librealsense-2.10.2/unit-tests/live-test: librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/unit-tests-main.cpp.o
librealsense-2.10.2/unit-tests/live-test: librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/build.make
librealsense-2.10.2/unit-tests/live-test: /home/fypbois/FYP_ws/devel/lib/librealsense2.so.2.10.2
librealsense-2.10.2/unit-tests/live-test: librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable live-test"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/unit-tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/live-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/build: librealsense-2.10.2/unit-tests/live-test

.PHONY : librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/build

librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/clean:
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/unit-tests && $(CMAKE_COMMAND) -P CMakeFiles/live-test.dir/cmake_clean.cmake
.PHONY : librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/clean

librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/depend:
	cd /home/fypbois/FYP_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fypbois/FYP_ws/src /home/fypbois/FYP_ws/src/librealsense-2.10.2/unit-tests /home/fypbois/FYP_ws/build /home/fypbois/FYP_ws/build/librealsense-2.10.2/unit-tests /home/fypbois/FYP_ws/build/librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : librealsense-2.10.2/unit-tests/CMakeFiles/live-test.dir/depend

