int main() {
    int test = 1;
    int size_hello = 12;
    int size_goodbye = 15;
    char* hello = "Hello, Clarice.";
    char* goodbye = "Goodbye, Clarice.";

    if(test) {
        write(1, hello, size_hello);
    } else {
        write(1, goodbye, size_goodbye);
    }

    exit(0);
}
