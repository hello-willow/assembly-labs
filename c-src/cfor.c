#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    int loop_count = 5;
    int size_hello = 12;
    int size_goodbye = 15;
    char* hello = "Hello, Clarice.";
    char* goodbye = "Goodbye, Clarice.";

    for(int i = 0; i != loop_count; i++) {
        write(1, hello, size_hello);
    }

    write(1, goodbye, size_goodbye);
    exit(0);
}
