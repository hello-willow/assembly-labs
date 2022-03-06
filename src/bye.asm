global _start

section .data
    hello_msg: db "Hello, Clarice ~ from main", 0xa
    hello_len: equ $ - hello_msg
    bye_msg: db "Goodbye, Clarice ~ from function bye", 0xa
    bye_len: equ $ - bye_msg

section .text
bye:
    ; save stack base ptr
    push ebp
    ; move new stack ptr
    mov ebp, esp
    ; write goodbye msg
    mov edx, bye_len
    mov ecx, bye_msg
    mov eax, 4              ; sys_write
    mov ebx, 1              ; stdout
    int 0x80
    ; restore base btr and return
    pop ebp
    ret

exit:
    mov eax, 1               ; sys_exit
    mov ebx, 0              ; retval 13
    int 0x80

_start:
    mov edx, hello_len
    mov ecx, hello_msg
    mov eax, 4              ; sys_write
    mov ebx, 1              ; stdout
    int 0x80

    call bye                ; call bye function
    jmp exit                ; jump to exit label
