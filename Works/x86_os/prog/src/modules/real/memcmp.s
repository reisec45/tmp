memcmp:

        ;-----------------------
        ;[create stack frame]
        ;-----------------------

                        ; BP+8 | number of byte
                        ; BP+6 | address1
                        ; BP+4 | address0

        push    bp      ; BP+2 
        mov     bp, sp  ; BP+0


        ;-----------------------
        ;[save register]
        ;-----------------------
        push    bx
        push    cx
        push    dx
        push    si
        push    di

        ;-----------------------
        ;[get parameter]
        ;-----------------------
        cld
        mov     si, [bp + 4]
        mov     di, [bp + 6]
        mov     cx, [bp + 8]

        ;-----------------------
        ;[compare by byte]
        ;-----------------------
        repe    cmpsb   ;if(ZF = 0) equal
        jnz     .10F    ;{
        mov     ax, 0   ;ret = 0 //equal
        jmp     .10E    ;}
.10F:                   ;else
                        ;{
        mov     ax, -1  ;ret = -1 //not equal
.10E:                   ;}


        ;-----------------------
        ;[return register]
        ;-----------------------

        pop     di
        pop     si
        pop     dx
        pop     cx
        pop     bx

        ;-----------------------
        ;[delete stack frame]
        ;-----------------------
        mov     sp, bp
        pop     bp

        ret







        
        








