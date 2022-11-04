; hello_world.asm
;
; Author: Lijon Fogel
; Date: 04-Nov-2022

global _start

section .text:

_start:
    ; write message
    mov eax, 0x4            ; use the write syscall
    mov ebx, 1              ; use stdout as the fd
    mov ecx, message        ; use message as the buffer
    mov edx, message_length ; and supply the length
    int 0x80                ; execute syscall

    ; gracefully exit
    mov eax, 0x1            ; exit the programm
    mov ebx, 0              ; return value
    int 0x80

section .data:
    message: db "Hello, world!", 0xA
    message_length equ $-message
