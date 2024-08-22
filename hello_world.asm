section .data
    hello db 'Hello, world!',0

section .text
    global _start

_start:
    mov rax, 1          ; syscall: write
    mov rdi, 1          ; file descriptor: stdout
    mov rsi, hello      ; message to write
    mov rdx, 13         ; length of message
    syscall

    mov rax, 60         ; syscall: exit
    xor rdi, rdi        ; status: 0
    syscall