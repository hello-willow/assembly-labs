; Initialize counter to 0 and max to 3
; Print "Hello" message
; Increment counter
; If counter is greater than max, print "Goodbye" and exit

global _start

section .data
    h_msg: db "Hello", 0xa
    h_len: equ $ - h_msg
    g_msg: db "Goodbye", 0xa
    g_len: equ $ - g_msg
    ctr: db 0
    max: db 3

section .text
_start:
    call loop
    call bye
    jmp exit

loop:
    mov edx, h_len
    mov ecx, h_msg
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    int 0x80

bye:
    mov edx, g_len
    mov ecx, g_msg
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    int 0x80

exit:
    mov eax, 1          ; sys_exit
    mov ebx, 0          ; retval success
    int 0x80
