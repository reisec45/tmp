        BOOT_LOAD       equ     0x7c00  ;load position of boot program
        
        ORG     BOOT_LOAD       ;load address
;************************************************
;entry point
;************************************************
entry:
        ;----------------------------------------
        ;BPB
        ;----------------------------------------
        jmp     ipl
        times   90-($-$$) db 0x90

        ;----------------------------------------
        ;IPL
        ;----------------------------------------


ipl:
        cli     ;deny interrupt


        mov     ax, 0x0000
        mov     ds, ax
        mov     es, ax
        mov     ss, ax
        mov     sp, BOOT_LOAD

        sti     ;allow interrupt
        
        mov     [BOOT.DRIVE], dl ;save boot drive
        
        mov     al, 'A'         ;AL=output char
        mov     ah, 0x0E        ;tele type output 
        mov     bx, 0x0000      ;set 0 to page number and color of char
        int     0x10            ;video BIOS call
        


        jmp     $

ALIGN 2, db 0
BOOT:

.DRIVE: 
        dw 0

;************************************************
; boot flag
;************************************************

        times   510-($-$$) db 0x00
        db      0x55, 0xAA
