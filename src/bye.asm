global _start

section .data
    hello_msg: db "Hello, Clarice.", 0xa
    hello_len: equ $ - hello_msg
    bye_msg: db "Goodbye, Clarice.", 0xa
    bye_len: equ $ - bye_msg

section .text
bye:
    ; save stack base ptr
    ; move new stack ptr to be the called
    ; write goodbye msg
    ; restore base btr and return

exit:
    mov al, 1               ; sys_exit
    mov ebx, 0              ; retval 13
    int 0x80

_start:
    mov edx, hello_len
    mov ecx, hello_msg
    mov ebx, 1              ; stdout
    mov eax, 4              ; sys_write
    int 0x80

    call bye                ; call bye function
    jmp exit                ; jump to exit label
