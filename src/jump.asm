global _start

section .data
    msg: db "Jump to exit, with return value of 13.", 0xa
    len: equ $ - msg
    exit_code: db 13

section .text
_start:
    mov edx, len
    mov ecx, msg
    mov ebx, 1      ; stdout
    mov eax, 4      ; sys_write
    int 0x80

    mov ebx, [exit_code]
    mov eax, 1      ; sys_exit
    jmp EAX
    int 0x80
