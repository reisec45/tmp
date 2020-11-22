KBC_Data_Write:
        
        ;------------------------------
        ;create stack frame
        ;------------------------------

                                        ; + 4 |data
                                        ; + 2 | IP
        push    bp                      ;BP + 0 | BP
        mov     bp, sp

        ;------------------------------
        ;save register
        ;------------------------------
        push    cx

        mov     cx, 0

.10L:   

        ;書き込み可能か？
        in      al, 0x64                ;AL = inp(0x64)
        test    al, 0x02                ;ZF = AL & 0x02
        loopnz  .10L

        cmp     cx, 0
        jz      .20E

        mov     al, [bp + 4]
        out     0x60, al
.20E:
        mov     ax, cx
        
        ;------------------------------
        ;return register
        ;------------------------------
        pop     cx

        ;------------------------------
        ;remove stack frame
        ;------------------------------
        mov     sp, bp
        pop     bp

        ret

KBC_Data_Read:

        ;------------------------------
        ;create stack frame
        ;------------------------------

                                        ; + 4 |data
                                        ; + 2 | IP
        push    bp                      ;BP + 0 | BP
        mov     bp, sp

        ;------------------------------
        ;save register
        ;------------------------------
        push    cx
        push    di

        mov     cx, 0

.10L:

        in      al, 0x64
        test    al, 0x01
        loopz  .10L

        cmp     cx, 0
        jz      .20E

        mov     ah, 0x00
        in      al, 0x60

        mov     di, [bp + 4]
        mov     [di + 0], ax
.20E:
        
        mov     ax, cx
        ;------------------------------
        ;return register
        ;------------------------------
        pop     di
        pop     cx

        ;------------------------------
        ;remove stack frame
        ;------------------------------
        mov     sp, bp
        pop     bp

        ret

KBC_Cmd_Write:

        ;------------------------------
        ;create stack frame
        ;------------------------------

                                        ; + 4 |data
                                        ; + 2 | IP
        push    bp                      ;BP + 0 | BP
        mov     bp, sp

        ;------------------------------
        ;save register
        ;------------------------------
        push    cx

        mov     cx, 0

.10L:

        in      al, 0x64
        test    al, 0x02
        loopnz  .10L

        cmp     cx, 0
        jz      .20E

        mov     al, [bp + 4]
        out     0x64, al

.20E:

        mov     ax, cx
        ;------------------------------
        ;return register
        ;------------------------------
        pop     cx

        ;------------------------------
        ;remove stack frame
        ;------------------------------
        mov     sp, bp
        pop     bp

        ret


