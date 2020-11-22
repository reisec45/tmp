.intel_syntax noprefix
.global _start

_start:
mov rax, 0x3
syscall

.data
msg1: .ascii "hello\n"
//msg2: .byte "hello\n"
//msg3: .db "hello\n"
.text


