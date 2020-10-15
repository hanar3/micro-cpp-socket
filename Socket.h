//
// Created by vitor on 10/7/2020.
//

#ifndef CPPSOCK_SOCKET_H
#define CPPSOCK_SOCKET_H

#ifndef  WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN
#endif

#include <windows.h>
#include <winsock2.h>
#include <iostream>
#include <ws2tcpip.h>
#include <iphlpapi.h>
#include <wspiapi.h>
#include <cstdio>

#define DEFAULT_PORT "27015"
#define errno WSAGetLastError()

class Socket {
public:
    WSAData wsaData;
    int iResult;
    FD_SET readfds;
    struct addrinfo *result = nullptr, *ptr = nullptr, hints;
    SOCKET ListenSocket = INVALID_SOCKET;
    SOCKET ClientSocket = INVALID_SOCKET;
    void(*onMessage)(const char* message, size_t msgSize) = nullptr;
    Socket();

     void Listen();
     void Disconnect();
};


#endif //CPPSOCK_SOCKET_H
