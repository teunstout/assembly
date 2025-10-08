; hello_world.asm
;
; Author: Teun Stout
; Date: 08-Oct-2025

global _start

section .data:
    msg: db "Hello World!", 0xA
    msg_len: equ $-msg

section .text:

_start:
    mov eax, 0x4            ; use the write syscall
    mov ebx, 1              ; use stdout as the file descriptor
    mov ecx, msg            ; use the message as the buffer
    mov edx, msg_len        ; and supply message length
    int 0x80                ; invoke the syscall
    
    ; exit the program
    mov eax, 0x1 
    mov ebx, 0
    int 0x80