putc:

        ;--------------------------------
        ;create stack frame
        ;--------------------------------

        ;push parameter         BP +4|
        ;push return address       +2| IP
        push    bp                 ;+0| BP
        mov     bp, sp


        ;--------------------------------
        ;save register
        ;--------------------------------
        push    ax
        push    bx

        ;--------------------------------
        ;start 
        ;--------------------------------
        mov     al, [bp + 4]    ;get parameter
        mov     ah, 0x0E        ;tele type output
        mov     bx, 0x0000      ;set 0 to page number and color of char
        int     0x10            ;video BIOS call

        ;--------------------------------
        ;return register
        ;--------------------------------
        pop     bx
        pop     bx

        ;--------------------------------
        ;delete stack frame
        ;--------------------------------
        mov     sp, bp
        pop     bp
        
        ret

