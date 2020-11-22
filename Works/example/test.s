.intel_syntax noprefix
.global main

main:
mov rax, 0x3c
mov rdi, 42
syscall

.data
msg1: .ascii "hello\n"
//msg2: .byte "hello\n"
//msg3: .db "hello\n"
.text


