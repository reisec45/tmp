[BITS 32]
        org     0x7c00
        sub     esp, 16
        mov     ebp, esp
        mov     eax, 2
        mov     ecx, [ebx]
        mov     dword [ebp + 4], 5
        add     dword [ebp + 4], eax
        mov     esi, [ebp + 4]
        inc     dword [ebp + 4]
        mov     edi, [ebp + 4]
        mov     dword [esp], 0x01 
        mov     eax, dword [esp]
        mov     eax, -2
        sub     eax, -2
        mov     ebx, eax

; mov     eax, dword [eip]
        jmp     0
