        BOOT_LOAD       equ     0x7c00  ;load position of boot program
        
        ORG     BOOT_LOAD       ;load address

;************************************************
;macro
;************************************************

%include        "../include/macro.s"

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

        sti                     ;allow interrupt
        
        mov     [BOOT.DRIVE], dl ;save boot drive

        ;------------------------------------
        ;print char
        ;------------------------------------
        cdecl   puts, .s0       ;puts(.s0)

        cdecl   reboot

        ;------------------------------------
        ;finish code
        ;------------------------------------

        jmp     $

        ;------------------------------------
        ;data
        ;------------------------------------
.s0     db "Booting....", 0x0A, 0x0D, 0

ALIGN 2, db 0
BOOT:                   ;information of boot drive

.DRIVE: 
        dw 0            ;number of drive

;************************************************
;modules
;************************************************

%include        "../modules/real/puts.s"
%include        "../modules/real/reboot.s"

;************************************************
; boot flag
;************************************************

        times   510-($-$$) db 0x00
        db      0x55, 0xAA
