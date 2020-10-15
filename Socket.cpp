#include "Socket.h"

Socket::Socket() {
     // Initialize WSAData
    iResult = WSAStartup(MAKEWORD(2,2), &wsaData);
    if (iResult != 0) {
        printf("WSAStartup failed  %d\n", iResult);
    }

    //ZeroMemory
    memset(&hints, 0, sizeof(hints));


    // Setup our hints for getaddrinfo
    hints.ai_family = AF_INET;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    hints.ai_flags = AI_PASSIVE;

    iResult = getaddrinfo(nullptr, DEFAULT_PORT, &hints, &result);

    if (iResult != 0) {
        printf("getaddrinfo failed %d\n", iResult);
        WSACleanup();
    }

    // Create our listen socket

    ListenSocket = socket(result->ai_family, result->ai_socktype, result->ai_protocol);
    // Bind the listen socket
    iResult = bind(ListenSocket, result->ai_addr, (int)result->ai_addrlen);

    if (iResult == SOCKET_ERROR){
        printf("bind failed with error: %d\n", WSAGetLastError());
        freeaddrinfo(result);
        closesocket(ListenSocket);
        WSACleanup();
    }
    printf("Socket Successfully bound.\n");
    freeaddrinfo(result);
}

void Socket::Listen() {
    if (listen(ListenSocket, SOMAXCONN) == SOCKET_ERROR) {
        printf("Listen failed wit error %d\n", WSAGetLastError());
        closesocket(ListenSocket);
        WSACleanup();
    }
    printf("Waiting for client.\n");


    ClientSocket = accept(ListenSocket, nullptr, nullptr);
    if (ClientSocket == INVALID_SOCKET) {
        printf("Accept failed: %d\n", WSAGetLastError());
    }
    printf("Client connected\n");

    char recvbuf[512];
    int iSendResult;

    int recvbuflen = 512;

    do {
        iResult = recv(ClientSocket, recvbuf, recvbuflen, 0);
        if(iResult > 0) {
            recvbuf[iResult] = '\0';
            iSendResult = send(ClientSocket, recvbuf, iResult, 0);
            if (onMessage != nullptr) {
                onMessage(recvbuf, (size_t)iResult);
            }
            if (iSendResult == SOCKET_ERROR) {
                printf("send failed: %d\n", WSAGetLastError());
                closesocket(ClientSocket);
                WSACleanup();
            }
            printf("Bytes sent: %d\n", iSendResult);
        } else if (result == nullptr) {
            printf("Connection closing...\n");
        }
    } while(iResult > 0);
    Disconnect();
}

void Socket::Disconnect() {
    iResult = shutdown(ClientSocket, SD_SEND);
    if (iResult == SOCKET_ERROR) {
        if (errno == WSAECONNRESET)
            printf("err::ECONNRESET - Connection reset by peer");
        else
            printf("shutdown failed with error: %d\n", WSAGetLastError());
        closesocket(ClientSocket);
        WSACleanup();
    }

    closesocket(ClientSocket);
    WSACleanup();
}