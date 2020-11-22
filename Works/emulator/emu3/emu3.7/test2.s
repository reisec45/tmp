[BITS 32]
org 0x7c00

mov eax, 64
mov ecx, 64
mov ebp, 256
mov dword [ebp], 10
mov dword [eax + 4*ecx + 128], 20
jmp 0
