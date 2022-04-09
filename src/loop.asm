; Print "Hello" three times, and then print "Goodbye" once
;
; WIP: this solution produces the correct output, but it doesn't follow the
; logic of cloop.c because the call to `goodbye` and exit process should be in
; the main function, not the subroutine `loop`.

global _start

section .data
    hello_msg: db "Hello, Clarice.", 0xa
    hello_len: equ $ - hello_msg
    goodbye_msg: db "Goodbye, Clarice.", 0xa
    goodbye_len: equ $ - goodbye_msg
    ctr: db 3

section .text
_start:
    ; initialize counter value
    mov eax, [ctr]

    ; pass execution to loop function
    call loop

loop:
    ; if ctr == 0, jump to goodbye & exit
    cmp eax, 0
    je goodbye

    ; if not, store value for later
    push eax
    
    ; print hello msg
    mov edx, hello_len
    mov ecx, hello_msg
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    int 0x80
     
    ; restore ctr, decrement ctr, and repeat loop
    pop eax
    sub eax, 1
    jmp loop

goodbye:
    ; print goodbye msg
    mov edx, goodbye_len
    mov ecx, goodbye_msg
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    int 0x80
    ; exit
    mov eax, 1          ; sys_exit
    mov ebx, 0          ; retval
    int 0x80
