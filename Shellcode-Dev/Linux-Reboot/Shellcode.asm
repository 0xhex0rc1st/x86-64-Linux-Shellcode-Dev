global _start
 section .text
 _start:

    xor eax, eax
    mov al, 169

    xor edi, edi
    mov rdi, 0xfee1dead

    xor esi, esi
    mov rsi, 672274793

    xor edx, edx    
    mov rdx, 0x1234567

    xor r10, r10
    syscall

    xor eax, eax
    mov al, 60
    syscall