.intel_syntax noprefix
.global main

main:
  mov eax, 1
  mov edi, 2
  add eax, esi
  jmp exit
exit:
  mov eax, 0x3c
  syscall


