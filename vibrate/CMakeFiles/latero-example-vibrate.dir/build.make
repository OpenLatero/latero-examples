# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/tactilelabs/Git/OpenLatero/latero-examples/Example1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tactilelabs/Git/OpenLatero/latero-examples/Example1

# Include any dependencies generated for this target.
include CMakeFiles/latero-example-vibrate.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/latero-example-vibrate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/latero-example-vibrate.dir/flags.make

CMakeFiles/latero-example-vibrate.dir/main.cpp.o: CMakeFiles/latero-example-vibrate.dir/flags.make
CMakeFiles/latero-example-vibrate.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tactilelabs/Git/OpenLatero/latero-examples/Example1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/latero-example-vibrate.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/latero-example-vibrate.dir/main.cpp.o -c /home/tactilelabs/Git/OpenLatero/latero-examples/Example1/main.cpp

CMakeFiles/latero-example-vibrate.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/latero-example-vibrate.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tactilelabs/Git/OpenLatero/latero-examples/Example1/main.cpp > CMakeFiles/latero-example-vibrate.dir/main.cpp.i

CMakeFiles/latero-example-vibrate.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/latero-example-vibrate.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tactilelabs/Git/OpenLatero/latero-examples/Example1/main.cpp -o CMakeFiles/latero-example-vibrate.dir/main.cpp.s

CMakeFiles/latero-example-vibrate.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/latero-example-vibrate.dir/main.cpp.o.requires

CMakeFiles/latero-example-vibrate.dir/main.cpp.o.provides: CMakeFiles/latero-example-vibrate.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/latero-example-vibrate.dir/build.make CMakeFiles/latero-example-vibrate.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/latero-example-vibrate.dir/main.cpp.o.provides

CMakeFiles/latero-example-vibrate.dir/main.cpp.o.provides.build: CMakeFiles/latero-example-vibrate.dir/main.cpp.o


# Object files for target latero-example-vibrate
latero__example__vibrate_OBJECTS = \
"CMakeFiles/latero-example-vibrate.dir/main.cpp.o"

# External object files for target latero-example-vibrate
latero__example__vibrate_EXTERNAL_OBJECTS =

latero-example-vibrate: CMakeFiles/latero-example-vibrate.dir/main.cpp.o
latero-example-vibrate: CMakeFiles/latero-example-vibrate.dir/build.make
latero-example-vibrate: CMakeFiles/latero-example-vibrate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tactilelabs/Git/OpenLatero/latero-examples/Example1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable latero-example-vibrate"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/latero-example-vibrate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/latero-example-vibrate.dir/build: latero-example-vibrate

.PHONY : CMakeFiles/latero-example-vibrate.dir/build

CMakeFiles/latero-example-vibrate.dir/requires: CMakeFiles/latero-example-vibrate.dir/main.cpp.o.requires

.PHONY : CMakeFiles/latero-example-vibrate.dir/requires

CMakeFiles/latero-example-vibrate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/latero-example-vibrate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/latero-example-vibrate.dir/clean

CMakeFiles/latero-example-vibrate.dir/depend:
	cd /home/tactilelabs/Git/OpenLatero/latero-examples/Example1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tactilelabs/Git/OpenLatero/latero-examples/Example1 /home/tactilelabs/Git/OpenLatero/latero-examples/Example1 /home/tactilelabs/Git/OpenLatero/latero-examples/Example1 /home/tactilelabs/Git/OpenLatero/latero-examples/Example1 /home/tactilelabs/Git/OpenLatero/latero-examples/Example1/CMakeFiles/latero-example-vibrate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/latero-example-vibrate.dir/depend
