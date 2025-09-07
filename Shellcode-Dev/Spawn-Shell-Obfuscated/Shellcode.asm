global _start

section .text

_start:
    xor rbx, rbx
    push rbx 
    push rbx
    add dword [rsp], 0x69622F2F
    add dword [rsp+4], 0x68732F6E
    mov rdi, rsp

    xor rsi, rsi
    xor rdx, rdx

    xor eax, eax
    mov al, 59
    syscall

    xor eax, eax
    mov al, 60
    syscall 

