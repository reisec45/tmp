;*********************************************
;read sector
;*********************************************
read_lba:
                                        ;  +10| read addres
                                        ;  +8 | sect read num
                                        ;  +6 | LBA
                                        ;  +4 | drive address
                                        ;  +2 | IP
        push    bp                      ;BP+0 | BP   
        mov     bp, sp

        ;-------------------------------
        ;save register
        ;-------------------------------
        push    si

        mov     si, [bp + 4]
        
        ;-------------------------------
        ;LBA to CHS
        ;-------------------------------
        
        mov     ax, [bp + 6]            ;AX = LBA
        cdecl   lba_chs, si, .chs, ax  ;lba_chs(drive, .chs, AX)

        ;-------------------------------
        ;copy drive number
        ;-------------------------------
        mov     al, [si + drive.no]
        mov     [.chs + drive.no], al   ;drive number

        ;-------------------------------
        ;read sector
        ;-------------------------------
        cdecl   read_chs, .chs, word[bp + 8], word[bp + 10]
                                        ;AX = read_chs(.chs,sect num, ofs)
        
        ;-------------------------------
        ;return register
        ;-------------------------------
        pop     si

        ;-------------------------------
        ;destroy stack
        ;-------------------------------
        mov     sp, bp
        pop     bp

        ret

ALIGN   2
.chs:   times drive_size db 0
        
