global _start

section .data
    hello_msg: db "Hello, Clarice.", 0xa
    hello_len: equ $ - hello_msg
    goodbye_msg: db "Goodbye, Clarice.", 0xa
    goodbye_len: equ $ - goodbye_msg
    ctr: db 3

section .text
loop:
    ; move counter into eax
    mov eax, [ctr]
    ; compare against 0
    cmp eax, 0
    ; jump to hello if greater than 0
    jg hello
    ; decrement ctr
    sub eax, 1
    ret

hello:
    ; print hello msg
    mov edx, hello_len
    mov ecx, hello_msg
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    int 0x80

goodbye:
    ; print goodbye msg
    mov edx, goodbye_len
    mov ecx, goodbye_msg
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    int 0x80
    ret

exit:
    mov eax, 1          ; sys_exit
    mov ebx, 0         ; retval
    int 0x80

_start:
    call loop
    call goodbye
    jmp exit
