global _start

section .text
_start:
    xor rbx, rbx
    mov rbx, 0x64777373
    push rbx
    mov rbx, 0x61702f2f6374652f
    push rbx
    mov rdi, rsp
    
    xor rsi, rsi
    xor rdx, rdx

    mov al, 2
    syscall
    test rax, rax
    js exit
    mov r8, rax

loop:
    mov rdi, r8
    mov rsi, rsp
    mov dx, 999
    xor rax, rax
    syscall

    test rax, rax
    jz close_file 
    js close_file

    mov rdx, rax
    mov rsi, rsp
    xor rdi, rdi
    inc rdi
    xor rax, rax
    inc rax
    syscall

    jmp loop

close_file:
    mov rdi, r8
    mov al, 3
    syscall

exit: 
    xor rdi, rdi
    mov al, 60
    syscall

