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
include librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/depend.make

# Include the progress variables for this target.
include librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/progress.make

# Include the compile flags for this target's objects.
include librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/flags.make

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/rs-align.cpp.o: librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/flags.make
librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/rs-align.cpp.o: /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/align/rs-align.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/rs-align.cpp.o"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-align.dir/rs-align.cpp.o -c /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/align/rs-align.cpp

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/rs-align.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-align.dir/rs-align.cpp.i"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/align/rs-align.cpp > CMakeFiles/rs-align.dir/rs-align.cpp.i

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/rs-align.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-align.dir/rs-align.cpp.s"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/align/rs-align.cpp -o CMakeFiles/rs-align.dir/rs-align.cpp.s

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.o: librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/flags.make
librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.o: /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.o"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.o -c /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui.cpp

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.i"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui.cpp > CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.i

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.s"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui.cpp -o CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.s

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.o: librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/flags.make
librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.o: /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.o"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.o -c /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui_draw.cpp

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.i"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui_draw.cpp > CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.i

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.s"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui_draw.cpp -o CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.s

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o: librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/flags.make
librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o: /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui_impl_glfw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o -c /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui_impl_glfw.cpp

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.i"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui_impl_glfw.cpp > CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.i

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.s"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/fypbois/FYP_ws/src/librealsense-2.10.2/third-party/imgui/imgui_impl_glfw.cpp -o CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.s

# Object files for target rs-align
rs__align_OBJECTS = \
"CMakeFiles/rs-align.dir/rs-align.cpp.o" \
"CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.o" \
"CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.o" \
"CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o"

# External object files for target rs-align
rs__align_EXTERNAL_OBJECTS =

librealsense-2.10.2/examples/align/rs-align: librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/rs-align.cpp.o
librealsense-2.10.2/examples/align/rs-align: librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui.cpp.o
librealsense-2.10.2/examples/align/rs-align: librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_draw.cpp.o
librealsense-2.10.2/examples/align/rs-align: librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/__/__/third-party/imgui/imgui_impl_glfw.cpp.o
librealsense-2.10.2/examples/align/rs-align: librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/build.make
librealsense-2.10.2/examples/align/rs-align: /home/fypbois/FYP_ws/devel/lib/librealsense2.so.2.10.2
librealsense-2.10.2/examples/align/rs-align: /usr/lib/x86_64-linux-gnu/libGL.so
librealsense-2.10.2/examples/align/rs-align: /usr/lib/x86_64-linux-gnu/libGLU.so
librealsense-2.10.2/examples/align/rs-align: /usr/lib/x86_64-linux-gnu/libglfw.so
librealsense-2.10.2/examples/align/rs-align: librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fypbois/FYP_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable rs-align"
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rs-align.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/build: librealsense-2.10.2/examples/align/rs-align

.PHONY : librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/build

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/clean:
	cd /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align && $(CMAKE_COMMAND) -P CMakeFiles/rs-align.dir/cmake_clean.cmake
.PHONY : librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/clean

librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/depend:
	cd /home/fypbois/FYP_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fypbois/FYP_ws/src /home/fypbois/FYP_ws/src/librealsense-2.10.2/examples/align /home/fypbois/FYP_ws/build /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align /home/fypbois/FYP_ws/build/librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : librealsense-2.10.2/examples/align/CMakeFiles/rs-align.dir/depend

