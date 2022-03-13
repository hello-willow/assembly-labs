#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int main() {
    int i;
    int loop_count = 3;
    char* hello = "Hello, Clarice.\n";
    char* goodbye = "Goodbye, Clarice.\n";
    size_t size_hello = strlen(hello);
    size_t size_goodbye = strlen(goodbye);

    i = 0;
    do {
        write(1, hello, size_hello);
        i++;
    } while(i != loop_count);

    write(1, goodbye, size_goodbye);
    exit(0);
}
