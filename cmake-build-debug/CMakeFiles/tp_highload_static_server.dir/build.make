# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/user/Work/Technopark/tp-highload-static_server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tp_highload_static_server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tp_highload_static_server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tp_highload_static_server.dir/flags.make

CMakeFiles/tp_highload_static_server.dir/main.cpp.o: CMakeFiles/tp_highload_static_server.dir/flags.make
CMakeFiles/tp_highload_static_server.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tp_highload_static_server.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tp_highload_static_server.dir/main.cpp.o -c /Users/user/Work/Technopark/tp-highload-static_server/main.cpp

CMakeFiles/tp_highload_static_server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_highload_static_server.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/Work/Technopark/tp-highload-static_server/main.cpp > CMakeFiles/tp_highload_static_server.dir/main.cpp.i

CMakeFiles/tp_highload_static_server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_highload_static_server.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/Work/Technopark/tp-highload-static_server/main.cpp -o CMakeFiles/tp_highload_static_server.dir/main.cpp.s

CMakeFiles/tp_highload_static_server.dir/response/response.cpp.o: CMakeFiles/tp_highload_static_server.dir/flags.make
CMakeFiles/tp_highload_static_server.dir/response/response.cpp.o: ../response/response.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tp_highload_static_server.dir/response/response.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tp_highload_static_server.dir/response/response.cpp.o -c /Users/user/Work/Technopark/tp-highload-static_server/response/response.cpp

CMakeFiles/tp_highload_static_server.dir/response/response.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_highload_static_server.dir/response/response.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/Work/Technopark/tp-highload-static_server/response/response.cpp > CMakeFiles/tp_highload_static_server.dir/response/response.cpp.i

CMakeFiles/tp_highload_static_server.dir/response/response.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_highload_static_server.dir/response/response.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/Work/Technopark/tp-highload-static_server/response/response.cpp -o CMakeFiles/tp_highload_static_server.dir/response/response.cpp.s

CMakeFiles/tp_highload_static_server.dir/server/server.cpp.o: CMakeFiles/tp_highload_static_server.dir/flags.make
CMakeFiles/tp_highload_static_server.dir/server/server.cpp.o: ../server/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tp_highload_static_server.dir/server/server.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tp_highload_static_server.dir/server/server.cpp.o -c /Users/user/Work/Technopark/tp-highload-static_server/server/server.cpp

CMakeFiles/tp_highload_static_server.dir/server/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_highload_static_server.dir/server/server.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/Work/Technopark/tp-highload-static_server/server/server.cpp > CMakeFiles/tp_highload_static_server.dir/server/server.cpp.i

CMakeFiles/tp_highload_static_server.dir/server/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_highload_static_server.dir/server/server.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/Work/Technopark/tp-highload-static_server/server/server.cpp -o CMakeFiles/tp_highload_static_server.dir/server/server.cpp.s

CMakeFiles/tp_highload_static_server.dir/request/request.cpp.o: CMakeFiles/tp_highload_static_server.dir/flags.make
CMakeFiles/tp_highload_static_server.dir/request/request.cpp.o: ../request/request.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tp_highload_static_server.dir/request/request.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tp_highload_static_server.dir/request/request.cpp.o -c /Users/user/Work/Technopark/tp-highload-static_server/request/request.cpp

CMakeFiles/tp_highload_static_server.dir/request/request.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_highload_static_server.dir/request/request.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/Work/Technopark/tp-highload-static_server/request/request.cpp > CMakeFiles/tp_highload_static_server.dir/request/request.cpp.i

CMakeFiles/tp_highload_static_server.dir/request/request.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_highload_static_server.dir/request/request.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/Work/Technopark/tp-highload-static_server/request/request.cpp -o CMakeFiles/tp_highload_static_server.dir/request/request.cpp.s

CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.o: CMakeFiles/tp_highload_static_server.dir/flags.make
CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.o: ../client/Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.o -c /Users/user/Work/Technopark/tp-highload-static_server/client/Client.cpp

CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/Work/Technopark/tp-highload-static_server/client/Client.cpp > CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.i

CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/Work/Technopark/tp-highload-static_server/client/Client.cpp -o CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.s

CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.o: CMakeFiles/tp_highload_static_server.dir/flags.make
CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.o: ../utils/parser/Parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.o -c /Users/user/Work/Technopark/tp-highload-static_server/utils/parser/Parser.cpp

CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/Work/Technopark/tp-highload-static_server/utils/parser/Parser.cpp > CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.i

CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/Work/Technopark/tp-highload-static_server/utils/parser/Parser.cpp -o CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.s

CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.o: CMakeFiles/tp_highload_static_server.dir/flags.make
CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.o: ../handler/Handler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.o -c /Users/user/Work/Technopark/tp-highload-static_server/handler/Handler.cpp

CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/user/Work/Technopark/tp-highload-static_server/handler/Handler.cpp > CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.i

CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/user/Work/Technopark/tp-highload-static_server/handler/Handler.cpp -o CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.s

# Object files for target tp_highload_static_server
tp_highload_static_server_OBJECTS = \
"CMakeFiles/tp_highload_static_server.dir/main.cpp.o" \
"CMakeFiles/tp_highload_static_server.dir/response/response.cpp.o" \
"CMakeFiles/tp_highload_static_server.dir/server/server.cpp.o" \
"CMakeFiles/tp_highload_static_server.dir/request/request.cpp.o" \
"CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.o" \
"CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.o" \
"CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.o"

# External object files for target tp_highload_static_server
tp_highload_static_server_EXTERNAL_OBJECTS =

tp_highload_static_server: CMakeFiles/tp_highload_static_server.dir/main.cpp.o
tp_highload_static_server: CMakeFiles/tp_highload_static_server.dir/response/response.cpp.o
tp_highload_static_server: CMakeFiles/tp_highload_static_server.dir/server/server.cpp.o
tp_highload_static_server: CMakeFiles/tp_highload_static_server.dir/request/request.cpp.o
tp_highload_static_server: CMakeFiles/tp_highload_static_server.dir/client/Client.cpp.o
tp_highload_static_server: CMakeFiles/tp_highload_static_server.dir/utils/parser/Parser.cpp.o
tp_highload_static_server: CMakeFiles/tp_highload_static_server.dir/handler/Handler.cpp.o
tp_highload_static_server: CMakeFiles/tp_highload_static_server.dir/build.make
tp_highload_static_server: CMakeFiles/tp_highload_static_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable tp_highload_static_server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tp_highload_static_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tp_highload_static_server.dir/build: tp_highload_static_server

.PHONY : CMakeFiles/tp_highload_static_server.dir/build

CMakeFiles/tp_highload_static_server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tp_highload_static_server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tp_highload_static_server.dir/clean

CMakeFiles/tp_highload_static_server.dir/depend:
	cd /Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/user/Work/Technopark/tp-highload-static_server /Users/user/Work/Technopark/tp-highload-static_server /Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug /Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug /Users/user/Work/Technopark/tp-highload-static_server/cmake-build-debug/CMakeFiles/tp_highload_static_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tp_highload_static_server.dir/depend

