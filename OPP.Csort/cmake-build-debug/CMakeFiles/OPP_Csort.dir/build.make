# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/qiansu/CLionProjects/OPP.Csort

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/qiansu/CLionProjects/OPP.Csort/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/OPP_Csort.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/OPP_Csort.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OPP_Csort.dir/flags.make

CMakeFiles/OPP_Csort.dir/main.cpp.o: CMakeFiles/OPP_Csort.dir/flags.make
CMakeFiles/OPP_Csort.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/qiansu/CLionProjects/OPP.Csort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OPP_Csort.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OPP_Csort.dir/main.cpp.o -c /Users/qiansu/CLionProjects/OPP.Csort/main.cpp

CMakeFiles/OPP_Csort.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OPP_Csort.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/qiansu/CLionProjects/OPP.Csort/main.cpp > CMakeFiles/OPP_Csort.dir/main.cpp.i

CMakeFiles/OPP_Csort.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OPP_Csort.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/qiansu/CLionProjects/OPP.Csort/main.cpp -o CMakeFiles/OPP_Csort.dir/main.cpp.s

CMakeFiles/OPP_Csort.dir/Csort.cpp.o: CMakeFiles/OPP_Csort.dir/flags.make
CMakeFiles/OPP_Csort.dir/Csort.cpp.o: ../Csort.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/qiansu/CLionProjects/OPP.Csort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/OPP_Csort.dir/Csort.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/OPP_Csort.dir/Csort.cpp.o -c /Users/qiansu/CLionProjects/OPP.Csort/Csort.cpp

CMakeFiles/OPP_Csort.dir/Csort.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OPP_Csort.dir/Csort.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/qiansu/CLionProjects/OPP.Csort/Csort.cpp > CMakeFiles/OPP_Csort.dir/Csort.cpp.i

CMakeFiles/OPP_Csort.dir/Csort.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OPP_Csort.dir/Csort.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/qiansu/CLionProjects/OPP.Csort/Csort.cpp -o CMakeFiles/OPP_Csort.dir/Csort.cpp.s

# Object files for target OPP_Csort
OPP_Csort_OBJECTS = \
"CMakeFiles/OPP_Csort.dir/main.cpp.o" \
"CMakeFiles/OPP_Csort.dir/Csort.cpp.o"

# External object files for target OPP_Csort
OPP_Csort_EXTERNAL_OBJECTS =

OPP_Csort: CMakeFiles/OPP_Csort.dir/main.cpp.o
OPP_Csort: CMakeFiles/OPP_Csort.dir/Csort.cpp.o
OPP_Csort: CMakeFiles/OPP_Csort.dir/build.make
OPP_Csort: CMakeFiles/OPP_Csort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/qiansu/CLionProjects/OPP.Csort/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable OPP_Csort"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OPP_Csort.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OPP_Csort.dir/build: OPP_Csort

.PHONY : CMakeFiles/OPP_Csort.dir/build

CMakeFiles/OPP_Csort.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OPP_Csort.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OPP_Csort.dir/clean

CMakeFiles/OPP_Csort.dir/depend:
	cd /Users/qiansu/CLionProjects/OPP.Csort/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/qiansu/CLionProjects/OPP.Csort /Users/qiansu/CLionProjects/OPP.Csort /Users/qiansu/CLionProjects/OPP.Csort/cmake-build-debug /Users/qiansu/CLionProjects/OPP.Csort/cmake-build-debug /Users/qiansu/CLionProjects/OPP.Csort/cmake-build-debug/CMakeFiles/OPP_Csort.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OPP_Csort.dir/depend

