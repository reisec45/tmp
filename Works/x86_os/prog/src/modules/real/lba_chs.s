lba_chs:
        ;-----------------------------------------
        ; create stack frame
        ;-----------------------------------------
                                        ;bp + 8 | LBA
                                        ;bp + 6 | drv_chs
                                        ;bp + 4 | drive adr
        push    bp
        mov     bp, sp

        ;-----------------------------------------
        ; save register
        ;-----------------------------------------
        push    ax
        push    bx
        push    dx
        push    si
        push    di

        ;-----------------------------------------
        ; calc sector
        ;-----------------------------------------
        mov     si, [bp + 4]
        mov     di, [bp + 6]

        mov     al, [si + drive.head]   ;AL = max head 
        mul     byte [si + drive.sect]  ;AX = head * sect
        mov     bx, ax                  ;BX = sect by cyln

        mov     dx, 0
        mov     ax, [bp + 8]
        div     bx                      ;DX = DX:AX % AB  //
                                        ;AX = DX:AX / BX  //cyln

        mov     [di + drive.cyln], ax   ;out cyln

        mov     ax, dx                  ;
        div     byte [si + drive.sect]  ;AH = AH % max sect //sect
                                        ;AL = AX / max sect //head
        
        movzx   dx, ah                  ;DX = sect
        inc     dx                      ;

        mov     ah, 0x00                ;AX = head

        mov     [di + drive.head], ax   ;out head
        mov     [di + drive.sect], dx   ;out sect

        ;-----------------------------------------
        ; return register
        ;-----------------------------------------
        pop     di
        pop     si
        pop     dx
        pop     bx
        pop     ax

        ;-----------------------------------------
        ; 
        ;-----------------------------------------
        mov     sp, bp
        pop     bp

        ret
