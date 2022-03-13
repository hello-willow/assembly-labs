#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int main() {
    int test = 1;
    char* hello = "Hello, Clarice.\n";
    char* goodbye = "Goodbye, Clarice.\n";
    size_t size_hello = strlen(hello);
    size_t size_goodbye = strlen(goodbye);

    if(test) {
        write(1, hello, size_hello);
    } else {
        write(1, goodbye, size_goodbye);
    }

    exit(0);
}
