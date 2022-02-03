global _start

section .data
exit_code: db 13

section .text
_start:
    mov al, 1
    mov ebx, [exit_code]
    int 0x80
