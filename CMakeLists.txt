cmake_minimum_required(VERSION 3.17)
project(CPPSock)

set(CMAKE_CXX_STANDARD 14)

add_executable(CPPSock main.cpp Socket.cpp Socket.h)

if(WIN32)
    target_link_libraries(CPPSock wsock32 ws2_32)
endif()
