# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/shixianwen/demoartoolkit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shixianwen/demoartoolkit/pbuild

# Utility rule file for modinfo_DemoARtoolkit.

# Include the progress variables for this target.
include CMakeFiles/modinfo_DemoARtoolkit.dir/progress.make

CMakeFiles/modinfo_DemoARtoolkit: ../src/Modules/DemoARtoolkit/modinfo.yaml
CMakeFiles/modinfo_DemoARtoolkit: ../src/Modules/DemoARtoolkit/DemoARtoolkit.C


../src/Modules/DemoARtoolkit/modinfo.yaml: ../src/Modules/DemoARtoolkit/DemoARtoolkit.C
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/shixianwen/demoartoolkit/pbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../src/Modules/DemoARtoolkit/modinfo.yaml, ../src/Modules/DemoARtoolkit/modinfo.html"
	cd /home/shixianwen/demoartoolkit/src/Modules/DemoARtoolkit && jevois-modinfo DemoARtoolkit.C

../src/Modules/DemoARtoolkit/modinfo.html: ../src/Modules/DemoARtoolkit/modinfo.yaml
	@$(CMAKE_COMMAND) -E touch_nocreate ../src/Modules/DemoARtoolkit/modinfo.html

modinfo_DemoARtoolkit: CMakeFiles/modinfo_DemoARtoolkit
modinfo_DemoARtoolkit: ../src/Modules/DemoARtoolkit/modinfo.yaml
modinfo_DemoARtoolkit: ../src/Modules/DemoARtoolkit/modinfo.html
modinfo_DemoARtoolkit: CMakeFiles/modinfo_DemoARtoolkit.dir/build.make

.PHONY : modinfo_DemoARtoolkit

# Rule to build all files generated by this target.
CMakeFiles/modinfo_DemoARtoolkit.dir/build: modinfo_DemoARtoolkit

.PHONY : CMakeFiles/modinfo_DemoARtoolkit.dir/build

CMakeFiles/modinfo_DemoARtoolkit.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/modinfo_DemoARtoolkit.dir/cmake_clean.cmake
.PHONY : CMakeFiles/modinfo_DemoARtoolkit.dir/clean

CMakeFiles/modinfo_DemoARtoolkit.dir/depend:
	cd /home/shixianwen/demoartoolkit/pbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shixianwen/demoartoolkit /home/shixianwen/demoartoolkit /home/shixianwen/demoartoolkit/pbuild /home/shixianwen/demoartoolkit/pbuild /home/shixianwen/demoartoolkit/pbuild/CMakeFiles/modinfo_DemoARtoolkit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/modinfo_DemoARtoolkit.dir/depend

