#include "Socket.h"

int main() {
    Socket socket;
    socket.onMessage = [](const char* message, size_t msgSize) {
        printf("[%db]: %s\n", msgSize, message);
    };

    socket.Listen();

    return 0;
}
