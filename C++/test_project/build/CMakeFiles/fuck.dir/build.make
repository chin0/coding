# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kafuuchin0/coding/coding_note/C++/test_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kafuuchin0/coding/coding_note/C++/test_project/build

# Include any dependencies generated for this target.
include CMakeFiles/fuck.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fuck.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fuck.dir/flags.make

CMakeFiles/fuck.dir/hello-vsc.cpp.o: CMakeFiles/fuck.dir/flags.make
CMakeFiles/fuck.dir/hello-vsc.cpp.o: ../hello-vsc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kafuuchin0/coding/coding_note/C++/test_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fuck.dir/hello-vsc.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fuck.dir/hello-vsc.cpp.o -c /home/kafuuchin0/coding/coding_note/C++/test_project/hello-vsc.cpp

CMakeFiles/fuck.dir/hello-vsc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fuck.dir/hello-vsc.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kafuuchin0/coding/coding_note/C++/test_project/hello-vsc.cpp > CMakeFiles/fuck.dir/hello-vsc.cpp.i

CMakeFiles/fuck.dir/hello-vsc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fuck.dir/hello-vsc.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kafuuchin0/coding/coding_note/C++/test_project/hello-vsc.cpp -o CMakeFiles/fuck.dir/hello-vsc.cpp.s

CMakeFiles/fuck.dir/hello-vsc.cpp.o.requires:

.PHONY : CMakeFiles/fuck.dir/hello-vsc.cpp.o.requires

CMakeFiles/fuck.dir/hello-vsc.cpp.o.provides: CMakeFiles/fuck.dir/hello-vsc.cpp.o.requires
	$(MAKE) -f CMakeFiles/fuck.dir/build.make CMakeFiles/fuck.dir/hello-vsc.cpp.o.provides.build
.PHONY : CMakeFiles/fuck.dir/hello-vsc.cpp.o.provides

CMakeFiles/fuck.dir/hello-vsc.cpp.o.provides.build: CMakeFiles/fuck.dir/hello-vsc.cpp.o


# Object files for target fuck
fuck_OBJECTS = \
"CMakeFiles/fuck.dir/hello-vsc.cpp.o"

# External object files for target fuck
fuck_EXTERNAL_OBJECTS =

fuck: CMakeFiles/fuck.dir/hello-vsc.cpp.o
fuck: CMakeFiles/fuck.dir/build.make
fuck: CMakeFiles/fuck.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kafuuchin0/coding/coding_note/C++/test_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fuck"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fuck.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fuck.dir/build: fuck

.PHONY : CMakeFiles/fuck.dir/build

CMakeFiles/fuck.dir/requires: CMakeFiles/fuck.dir/hello-vsc.cpp.o.requires

.PHONY : CMakeFiles/fuck.dir/requires

CMakeFiles/fuck.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fuck.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fuck.dir/clean

CMakeFiles/fuck.dir/depend:
	cd /home/kafuuchin0/coding/coding_note/C++/test_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kafuuchin0/coding/coding_note/C++/test_project /home/kafuuchin0/coding/coding_note/C++/test_project /home/kafuuchin0/coding/coding_note/C++/test_project/build /home/kafuuchin0/coding/coding_note/C++/test_project/build /home/kafuuchin0/coding/coding_note/C++/test_project/build/CMakeFiles/fuck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fuck.dir/depend

