# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/nit/Develop/ignaz/flutter_testing_megapack/linux

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nit/Develop/ignaz/flutter_testing_megapack

# Include any dependencies generated for this target.
include plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/compiler_depend.make

# Include the progress variables for this target.
include plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/flags.make

plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.o: plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/flags.make
plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.o: /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/ephemeral/.plugin_symlinks/dynamic_color/linux/dynamic_color_plugin.cc
plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.o: plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/nit/Develop/ignaz/flutter_testing_megapack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.o"
	cd /home/nit/Develop/ignaz/flutter_testing_megapack/plugins/dynamic_color && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.o -MF CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.o.d -o CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.o -c /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/ephemeral/.plugin_symlinks/dynamic_color/linux/dynamic_color_plugin.cc

plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.i"
	cd /home/nit/Develop/ignaz/flutter_testing_megapack/plugins/dynamic_color && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/ephemeral/.plugin_symlinks/dynamic_color/linux/dynamic_color_plugin.cc > CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.i

plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.s"
	cd /home/nit/Develop/ignaz/flutter_testing_megapack/plugins/dynamic_color && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/ephemeral/.plugin_symlinks/dynamic_color/linux/dynamic_color_plugin.cc -o CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.s

# Object files for target dynamic_color_plugin
dynamic_color_plugin_OBJECTS = \
"CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.o"

# External object files for target dynamic_color_plugin
dynamic_color_plugin_EXTERNAL_OBJECTS =

plugins/dynamic_color/libdynamic_color_plugin.so: plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/dynamic_color_plugin.cc.o
plugins/dynamic_color/libdynamic_color_plugin.so: plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/build.make
plugins/dynamic_color/libdynamic_color_plugin.so: /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/ephemeral/libflutter_linux_gtk.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libgtk-3.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libgdk-3.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libz.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libpangocairo-1.0.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libpango-1.0.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libharfbuzz.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libatk-1.0.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libcairo-gobject.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libcairo.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libgdk_pixbuf-2.0.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libgio-2.0.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libgobject-2.0.so
plugins/dynamic_color/libdynamic_color_plugin.so: /usr/lib/libglib-2.0.so
plugins/dynamic_color/libdynamic_color_plugin.so: plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/nit/Develop/ignaz/flutter_testing_megapack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libdynamic_color_plugin.so"
	cd /home/nit/Develop/ignaz/flutter_testing_megapack/plugins/dynamic_color && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dynamic_color_plugin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/build: plugins/dynamic_color/libdynamic_color_plugin.so
.PHONY : plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/build

plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/clean:
	cd /home/nit/Develop/ignaz/flutter_testing_megapack/plugins/dynamic_color && $(CMAKE_COMMAND) -P CMakeFiles/dynamic_color_plugin.dir/cmake_clean.cmake
.PHONY : plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/clean

plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/depend:
	cd /home/nit/Develop/ignaz/flutter_testing_megapack && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nit/Develop/ignaz/flutter_testing_megapack/linux /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/ephemeral/.plugin_symlinks/dynamic_color/linux /home/nit/Develop/ignaz/flutter_testing_megapack /home/nit/Develop/ignaz/flutter_testing_megapack/plugins/dynamic_color /home/nit/Develop/ignaz/flutter_testing_megapack/plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : plugins/dynamic_color/CMakeFiles/dynamic_color_plugin.dir/depend
