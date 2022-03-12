#include <stdio.h>
#include <stdlib.h>

int main() {
    int loop_count = 5;
    int size_count = 12;
    int size_hello = 15;
    int size_goodbye = 17;
    char* hello = "Hello, Clarice.";
    char* goodbye = "Goodbye, Clarice.";

    while(loop_count) {
        write(1, hello, size_hello);
        loop_count--;
    }

    write(1, goodbye, size_goodbye);
    exit(0);
}
