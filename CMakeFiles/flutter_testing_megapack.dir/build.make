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
include CMakeFiles/flutter_testing_megapack.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/flutter_testing_megapack.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/flutter_testing_megapack.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/flutter_testing_megapack.dir/flags.make

CMakeFiles/flutter_testing_megapack.dir/main.cc.o: CMakeFiles/flutter_testing_megapack.dir/flags.make
CMakeFiles/flutter_testing_megapack.dir/main.cc.o: /home/nit/Develop/ignaz/flutter_testing_megapack/linux/main.cc
CMakeFiles/flutter_testing_megapack.dir/main.cc.o: CMakeFiles/flutter_testing_megapack.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/nit/Develop/ignaz/flutter_testing_megapack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/flutter_testing_megapack.dir/main.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/flutter_testing_megapack.dir/main.cc.o -MF CMakeFiles/flutter_testing_megapack.dir/main.cc.o.d -o CMakeFiles/flutter_testing_megapack.dir/main.cc.o -c /home/nit/Develop/ignaz/flutter_testing_megapack/linux/main.cc

CMakeFiles/flutter_testing_megapack.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/flutter_testing_megapack.dir/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nit/Develop/ignaz/flutter_testing_megapack/linux/main.cc > CMakeFiles/flutter_testing_megapack.dir/main.cc.i

CMakeFiles/flutter_testing_megapack.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/flutter_testing_megapack.dir/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nit/Develop/ignaz/flutter_testing_megapack/linux/main.cc -o CMakeFiles/flutter_testing_megapack.dir/main.cc.s

CMakeFiles/flutter_testing_megapack.dir/my_application.cc.o: CMakeFiles/flutter_testing_megapack.dir/flags.make
CMakeFiles/flutter_testing_megapack.dir/my_application.cc.o: /home/nit/Develop/ignaz/flutter_testing_megapack/linux/my_application.cc
CMakeFiles/flutter_testing_megapack.dir/my_application.cc.o: CMakeFiles/flutter_testing_megapack.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/nit/Develop/ignaz/flutter_testing_megapack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/flutter_testing_megapack.dir/my_application.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/flutter_testing_megapack.dir/my_application.cc.o -MF CMakeFiles/flutter_testing_megapack.dir/my_application.cc.o.d -o CMakeFiles/flutter_testing_megapack.dir/my_application.cc.o -c /home/nit/Develop/ignaz/flutter_testing_megapack/linux/my_application.cc

CMakeFiles/flutter_testing_megapack.dir/my_application.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/flutter_testing_megapack.dir/my_application.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nit/Develop/ignaz/flutter_testing_megapack/linux/my_application.cc > CMakeFiles/flutter_testing_megapack.dir/my_application.cc.i

CMakeFiles/flutter_testing_megapack.dir/my_application.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/flutter_testing_megapack.dir/my_application.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nit/Develop/ignaz/flutter_testing_megapack/linux/my_application.cc -o CMakeFiles/flutter_testing_megapack.dir/my_application.cc.s

CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.o: CMakeFiles/flutter_testing_megapack.dir/flags.make
CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.o: /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/generated_plugin_registrant.cc
CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.o: CMakeFiles/flutter_testing_megapack.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/nit/Develop/ignaz/flutter_testing_megapack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.o -MF CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.o.d -o CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.o -c /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/generated_plugin_registrant.cc

CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/generated_plugin_registrant.cc > CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.i

CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/generated_plugin_registrant.cc -o CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.s

# Object files for target flutter_testing_megapack
flutter_testing_megapack_OBJECTS = \
"CMakeFiles/flutter_testing_megapack.dir/main.cc.o" \
"CMakeFiles/flutter_testing_megapack.dir/my_application.cc.o" \
"CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.o"

# External object files for target flutter_testing_megapack
flutter_testing_megapack_EXTERNAL_OBJECTS =

intermediates_do_not_run/flutter_testing_megapack: CMakeFiles/flutter_testing_megapack.dir/main.cc.o
intermediates_do_not_run/flutter_testing_megapack: CMakeFiles/flutter_testing_megapack.dir/my_application.cc.o
intermediates_do_not_run/flutter_testing_megapack: CMakeFiles/flutter_testing_megapack.dir/flutter/generated_plugin_registrant.cc.o
intermediates_do_not_run/flutter_testing_megapack: CMakeFiles/flutter_testing_megapack.dir/build.make
intermediates_do_not_run/flutter_testing_megapack: plugins/dynamic_color/libdynamic_color_plugin.so
intermediates_do_not_run/flutter_testing_megapack: /home/nit/Develop/ignaz/flutter_testing_megapack/linux/flutter/ephemeral/libflutter_linux_gtk.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libgtk-3.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libgdk-3.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libz.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libpangocairo-1.0.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libpango-1.0.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libharfbuzz.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libatk-1.0.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libcairo-gobject.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libcairo.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libgdk_pixbuf-2.0.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libgio-2.0.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libgobject-2.0.so
intermediates_do_not_run/flutter_testing_megapack: /usr/lib/libglib-2.0.so
intermediates_do_not_run/flutter_testing_megapack: CMakeFiles/flutter_testing_megapack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/nit/Develop/ignaz/flutter_testing_megapack/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable intermediates_do_not_run/flutter_testing_megapack"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/flutter_testing_megapack.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/flutter_testing_megapack.dir/build: intermediates_do_not_run/flutter_testing_megapack
.PHONY : CMakeFiles/flutter_testing_megapack.dir/build

CMakeFiles/flutter_testing_megapack.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/flutter_testing_megapack.dir/cmake_clean.cmake
.PHONY : CMakeFiles/flutter_testing_megapack.dir/clean

CMakeFiles/flutter_testing_megapack.dir/depend:
	cd /home/nit/Develop/ignaz/flutter_testing_megapack && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nit/Develop/ignaz/flutter_testing_megapack/linux /home/nit/Develop/ignaz/flutter_testing_megapack/linux /home/nit/Develop/ignaz/flutter_testing_megapack /home/nit/Develop/ignaz/flutter_testing_megapack /home/nit/Develop/ignaz/flutter_testing_megapack/CMakeFiles/flutter_testing_megapack.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/flutter_testing_megapack.dir/depend

