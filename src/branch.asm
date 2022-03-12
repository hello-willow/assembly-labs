global _start

section .data
    hello_msg: db "Hello, Clarice.", 0xa
    hello_len: equ $ - hello_msg
    bye_msg: db "Goodbye, Clarice.", 0xa
    bye_len: equ $ - bye_msg
    test: db 1

section .text
bye:
    ; save stack base ptr
    push ebp
    ; move new stack ptr to be the called
    mov ebp, esp
    ; write goodbye msg
    mov edx, bye_len
    mov ecx, bye_msg
    mov al, 4               ; sys_write
    mov ebx, 1              ; stdout
    int 0x80
    ; restore base btr and return
    pop ebp

exit:
    mov al, 1               ; sys_exit
    mov ebx, 0              ; retval 13
    int 0x80

_start:
    mov al, [test]
    cmp al, 1
    jz bye

    mov edx, hello_len
    mov ecx, hello_msg
    mov ebx, 1              ; stdout
    mov eax, 4              ; sys_write
    int 0x80

    jmp exit                ; jump to exit label
