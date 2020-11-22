memcpy:
        ;---------------------------
        ;[create a stack flame]
        ;---------------------------
                        ; EBP+16 | number of byte
                        ; EBP+12 | copy from
                        ; EBP+8  | copy to


        
        push    ebp      ; BP+0
        mov     ebp, esp ; BP+4

        ;---------------------------
        ;[save register]
        ;---------------------------
        push    ecx
        push    esi
        push    edi

        ;---------------------------
        ;[copy addres by byte]
        ;---------------------------
        cld
        mov     edi, [ebp + 8]    ; DI = copy to 
        mov     esi, [ebp + 12]    ; SI = copy from
        mov     ecx, [ebp + 16]    ; CX = number od byte

        rep     movsb   ;while(*DI++ = *SI++);

        ;---------------------------
        ;[return register]
        ;---------------------------
        pop     edi
        pop     esi
        pop     ecx


        ;---------------------------
        ;[delete stack frame]
        ;---------------------------
        mov     esp, ebp
        pop     ebp


        ret










