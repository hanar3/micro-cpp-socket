# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\dev\CPPSock

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\dev\CPPSock\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\CPPSock.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\CPPSock.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\CPPSock.dir\flags.make

CMakeFiles\CPPSock.dir\main.cpp.obj: CMakeFiles\CPPSock.dir\flags.make
CMakeFiles\CPPSock.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\dev\CPPSock\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CPPSock.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\CPPSock.dir\main.cpp.obj /FdCMakeFiles\CPPSock.dir\ /FS -c D:\dev\CPPSock\main.cpp
<<

CMakeFiles\CPPSock.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPPSock.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe > CMakeFiles\CPPSock.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\dev\CPPSock\main.cpp
<<

CMakeFiles\CPPSock.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPPSock.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\CPPSock.dir\main.cpp.s /c D:\dev\CPPSock\main.cpp
<<

CMakeFiles\CPPSock.dir\Socket.cpp.obj: CMakeFiles\CPPSock.dir\flags.make
CMakeFiles\CPPSock.dir\Socket.cpp.obj: ..\Socket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\dev\CPPSock\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/CPPSock.dir/Socket.cpp.obj"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\CPPSock.dir\Socket.cpp.obj /FdCMakeFiles\CPPSock.dir\ /FS -c D:\dev\CPPSock\Socket.cpp
<<

CMakeFiles\CPPSock.dir\Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CPPSock.dir/Socket.cpp.i"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe > CMakeFiles\CPPSock.dir\Socket.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\dev\CPPSock\Socket.cpp
<<

CMakeFiles\CPPSock.dir\Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CPPSock.dir/Socket.cpp.s"
	C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\CPPSock.dir\Socket.cpp.s /c D:\dev\CPPSock\Socket.cpp
<<

# Object files for target CPPSock
CPPSock_OBJECTS = \
"CMakeFiles\CPPSock.dir\main.cpp.obj" \
"CMakeFiles\CPPSock.dir\Socket.cpp.obj"

# External object files for target CPPSock
CPPSock_EXTERNAL_OBJECTS =

CPPSock.exe: CMakeFiles\CPPSock.dir\main.cpp.obj
CPPSock.exe: CMakeFiles\CPPSock.dir\Socket.cpp.obj
CPPSock.exe: CMakeFiles\CPPSock.dir\build.make
CPPSock.exe: CMakeFiles\CPPSock.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\dev\CPPSock\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CPPSock.exe"
	"C:\Program Files\JetBrains\CLion 2020.2.3\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\CPPSock.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\mt.exe --manifests  -- C:\PROGRA~2\MICROS~1\2019\COMMUN~1\VC\Tools\MSVC\1425~1.286\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\CPPSock.dir\objects1.rsp @<<
 /out:CPPSock.exe /implib:CPPSock.lib /pdb:D:\dev\CPPSock\cmake-build-debug\CPPSock.pdb /version:0.0  /machine:x64 /debug /INCREMENTAL /subsystem:console  wsock32.lib ws2_32.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\CPPSock.dir\build: CPPSock.exe

.PHONY : CMakeFiles\CPPSock.dir\build

CMakeFiles\CPPSock.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\CPPSock.dir\cmake_clean.cmake
.PHONY : CMakeFiles\CPPSock.dir\clean

CMakeFiles\CPPSock.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\dev\CPPSock D:\dev\CPPSock D:\dev\CPPSock\cmake-build-debug D:\dev\CPPSock\cmake-build-debug D:\dev\CPPSock\cmake-build-debug\CMakeFiles\CPPSock.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\CPPSock.dir\depend
