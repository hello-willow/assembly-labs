global _start

section .data
    msg: db "Jump to exit, with return value of 13.", 0xa
    len: equ $ - msg
    exit_code: db 13

section .text
exit:
    mov al, 1               ; sys_exit
    mov ebx, 0              ; retval success
    int 0x80

_start:
    mov edx, len
    mov ecx, msg
    mov ebx, 1              ; stdout
    mov eax, 4              ; sys_write
    int 0x80
    jmp exit
