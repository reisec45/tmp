puts:

        ;--------------------------------
        ;create stack frame
        ;--------------------------------

        ;push strings address   BP +4|
        ;push return address       +2| IP
        push    bp                 ;+0| BP
        mov     bp, sp


        ;--------------------------------
        ;save register
        ;--------------------------------
        push    ax
        push    bx
        push    si

        ;--------------------------------
        ;get parameter
        ;--------------------------------
        mov     si, [bp + 4]

        ;--------------------------------
        ;start 
        ;--------------------------------
        mov     ah, 0x0E        ;tele type output
        mov     bx, 0x0000      ;set 0 to page number and color of char
        cld                     ;DF = 0;address++
.10L:                           ;do
                                ;{
        lodsb                   ;  AL = *SI++;

        cmp     al, 0           ;  if(0 == AL)
        je      .10E            ;  break;

        int     0x10            ;int10(0x0E, AL); video BIOS call
        jmp     .10L
.10E:                            ;}while(1);

        ;--------------------------------
        ;return register
        ;--------------------------------
        pop     si
        pop     bx
        pop     ax

        ;--------------------------------
        ;delete stack frame
        ;--------------------------------
        mov     sp, bp
        pop     bp
        
        ret

