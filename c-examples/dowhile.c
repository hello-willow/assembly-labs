#include <stdio.h>
#include <stdlib.h>

int main() {
    int loop_count = 5;
    int size_hello = 12;
    int size_goodbye = 15;
    char* hello = "Hello, Clarice.";
    char* goodbye = "Goodbye, Clarice.";

    int i = 0;
    do {
        write(1, hello, size_hello);
        i++;
    } while(i != loop_count);

    write(1, goodbye, size_goodbye);
    exit(0);
}
