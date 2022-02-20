global _start

section .data
    msg: db "Call to exit.", 0xa
    len: equ $ - msg

section .text
exit_101:           ; function to load ebx & eax with exit vals
    mov ebx, 101    ; exit code
    mov eax, 1      ; sys_exit 
    ret

_start:
    mov edx, len
    mov ecx, msg
    mov ebx, 1      ; stdout
    mov eax, 4      ; sys_write
    int 0x80

    call exit_101
    int 0x80
