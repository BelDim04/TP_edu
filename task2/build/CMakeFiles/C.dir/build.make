# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dmitriy/Documents/TP_edu/task2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dmitriy/Documents/TP_edu/task2/build

# Include any dependencies generated for this target.
include CMakeFiles/C.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/C.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/C.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/C.dir/flags.make

CMakeFiles/C.dir/C/main.cpp.o: CMakeFiles/C.dir/flags.make
CMakeFiles/C.dir/C/main.cpp.o: ../C/main.cpp
CMakeFiles/C.dir/C/main.cpp.o: CMakeFiles/C.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dmitriy/Documents/TP_edu/task2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/C.dir/C/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/C.dir/C/main.cpp.o -MF CMakeFiles/C.dir/C/main.cpp.o.d -o CMakeFiles/C.dir/C/main.cpp.o -c /home/dmitriy/Documents/TP_edu/task2/C/main.cpp

CMakeFiles/C.dir/C/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/C.dir/C/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dmitriy/Documents/TP_edu/task2/C/main.cpp > CMakeFiles/C.dir/C/main.cpp.i

CMakeFiles/C.dir/C/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/C.dir/C/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dmitriy/Documents/TP_edu/task2/C/main.cpp -o CMakeFiles/C.dir/C/main.cpp.s

# Object files for target C
C_OBJECTS = \
"CMakeFiles/C.dir/C/main.cpp.o"

# External object files for target C
C_EXTERNAL_OBJECTS =

../bin/C: CMakeFiles/C.dir/C/main.cpp.o
../bin/C: CMakeFiles/C.dir/build.make
../bin/C: ../lib/libLib.so
../bin/C: CMakeFiles/C.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dmitriy/Documents/TP_edu/task2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/C"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/C.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/C.dir/build: ../bin/C
.PHONY : CMakeFiles/C.dir/build

CMakeFiles/C.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/C.dir/cmake_clean.cmake
.PHONY : CMakeFiles/C.dir/clean

CMakeFiles/C.dir/depend:
	cd /home/dmitriy/Documents/TP_edu/task2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dmitriy/Documents/TP_edu/task2 /home/dmitriy/Documents/TP_edu/task2 /home/dmitriy/Documents/TP_edu/task2/build /home/dmitriy/Documents/TP_edu/task2/build /home/dmitriy/Documents/TP_edu/task2/build/CMakeFiles/C.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/C.dir/depend
