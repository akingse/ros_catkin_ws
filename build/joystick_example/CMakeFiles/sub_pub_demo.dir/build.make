# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/akingse/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/akingse/catkin_ws/build

# Include any dependencies generated for this target.
include joystick_example/CMakeFiles/sub_pub_demo.dir/depend.make

# Include the progress variables for this target.
include joystick_example/CMakeFiles/sub_pub_demo.dir/progress.make

# Include the compile flags for this target's objects.
include joystick_example/CMakeFiles/sub_pub_demo.dir/flags.make

joystick_example/CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.o: joystick_example/CMakeFiles/sub_pub_demo.dir/flags.make
joystick_example/CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.o: /home/akingse/catkin_ws/src/joystick_example/src/sub_pub_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/akingse/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object joystick_example/CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.o"
	cd /home/akingse/catkin_ws/build/joystick_example && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.o -c /home/akingse/catkin_ws/src/joystick_example/src/sub_pub_demo.cpp

joystick_example/CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.i"
	cd /home/akingse/catkin_ws/build/joystick_example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/akingse/catkin_ws/src/joystick_example/src/sub_pub_demo.cpp > CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.i

joystick_example/CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.s"
	cd /home/akingse/catkin_ws/build/joystick_example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/akingse/catkin_ws/src/joystick_example/src/sub_pub_demo.cpp -o CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.s

# Object files for target sub_pub_demo
sub_pub_demo_OBJECTS = \
"CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.o"

# External object files for target sub_pub_demo
sub_pub_demo_EXTERNAL_OBJECTS =

/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: joystick_example/CMakeFiles/sub_pub_demo.dir/src/sub_pub_demo.cpp.o
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: joystick_example/CMakeFiles/sub_pub_demo.dir/build.make
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /opt/ros/kinetic/lib/libroscpp.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /opt/ros/kinetic/lib/librosconsole.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /opt/ros/kinetic/lib/librostime.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /opt/ros/kinetic/lib/libcpp_common.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo: joystick_example/CMakeFiles/sub_pub_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/akingse/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo"
	cd /home/akingse/catkin_ws/build/joystick_example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sub_pub_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
joystick_example/CMakeFiles/sub_pub_demo.dir/build: /home/akingse/catkin_ws/devel/lib/joystick_example/sub_pub_demo

.PHONY : joystick_example/CMakeFiles/sub_pub_demo.dir/build

joystick_example/CMakeFiles/sub_pub_demo.dir/clean:
	cd /home/akingse/catkin_ws/build/joystick_example && $(CMAKE_COMMAND) -P CMakeFiles/sub_pub_demo.dir/cmake_clean.cmake
.PHONY : joystick_example/CMakeFiles/sub_pub_demo.dir/clean

joystick_example/CMakeFiles/sub_pub_demo.dir/depend:
	cd /home/akingse/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/akingse/catkin_ws/src /home/akingse/catkin_ws/src/joystick_example /home/akingse/catkin_ws/build /home/akingse/catkin_ws/build/joystick_example /home/akingse/catkin_ws/build/joystick_example/CMakeFiles/sub_pub_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : joystick_example/CMakeFiles/sub_pub_demo.dir/depend

