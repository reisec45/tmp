memcpy:
        ;---------------------------
        ;[create a stack flame]
        ;---------------------------
                        ; BP+8 | number of byte
                        ; BP+6 | copy from
                        ; BP+4  | copy to

        
        push    bp      ; BP+2
        mov     bp, sp  ; BP+0

        ;---------------------------
        ;[save register]
        ;---------------------------
        push    cx
        push    si
        push    di

        ;---------------------------
        ;[copy addres by byte]
        ;---------------------------
        cld
        mov     di, [bp + 4]    ; DI = copy to 
        mov     si, [bp + 6]    ; SI = copy from
        mov     cx, [bp + 8]    ; CX = number od byte

        rep     movsb   ;while(*DI++ = *SI++);

        ;---------------------------
        ;[return register]
        ;---------------------------
        pop     di
        pop     si
        pop     cx


        ;---------------------------
        ;[delete stack frame]
        ;---------------------------
        mov     sp, bp
        pop     bp


        ret










