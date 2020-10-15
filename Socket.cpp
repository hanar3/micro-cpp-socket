#include "Socket.h"

Socket::Socket() {
     // Initialize WSAData
    iResult = WSAStartup(MAKEWORD(2,2), &wsaData);
    if (iResult != 0) {
        printf("WSAStartup failed  %d\n", iResult);
    }

    //ZeroMemory
    memset(&hints, 0, sizeof(hints));

    unsigned int i;
    for (i = 0; i < SOMAXCONN; i++)
    {
        clients[i] = 0;
    }



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
    while (iResult > 0) {
        FD_ZERO(&readfds);
        FD_SET(ListenSocket, &readfds);

        // Populate the set with valid sockets
        for (unsigned int i = 0; i < SOMAXCONN; i++) {
           unsigned int sd = clients[i]; // socket descriptor
           if (sd > 0)
               FD_SET(sd, &readfds);
        }

        int activity = select(0, &readfds, NULL, NULL,NULL);
        if (activity < 0 && errno != EINTR) {
            printf("Select error");
        }

        //If something happened on the master socket ,
        //then its an incoming connection

        if (FD_ISSET(ListenSocket, &readfds)) {
            ClientSocket = accept(ListenSocket, NULL, NULL);
            if (ClientSocket == INVALID_SOCKET) {
                closesocket(ListenSocket);
                Disconnect();
            }
        }
    }

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