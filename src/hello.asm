global _start

section .data
    msg: db "Hello, Clarice.", 0xa
    msglen: equ $ - msg

section .text
_start:
    mov edx, msglen
    mov ecx, msg
    mov ebx, 1          ; file handle (stdout) 
    mov eax, 4          ; syscall (sys_write)
    int 0x80

    mov ebx, 0          ; exit code
    mov eax, 1          ; syscall (sys_exit)
    int 0x80
