#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int main() {
    int i;
    char* hello = "Hello, Clarice.\n";
    char* goodbye = "Goodbye, Clarice.\n";
    size_t size_hello = strlen(hello);
    size_t size_goodbye = strlen(goodbye);

    i = 3;
    while(i) {
        write(1, hello, size_hello);
        i--;
    }

    write(1, goodbye, size_goodbye);
    exit(0);
}
