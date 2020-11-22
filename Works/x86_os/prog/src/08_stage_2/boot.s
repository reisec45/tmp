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

        ;------------------------------------
        ;read next 512 byte
        ;------------------------------------
        mov     ah, 0x02                ;AH = read command
        mov     al, 1                   ;AL = number of read sector
        mov     cx, 0x0002              ;CX = silinda/sector
        mov     dh, 0x00                ;DH = position of head
        mov     dl, [BOOT.DRIVE]        ;DL = number of drive
        mov     bx, 0x7C00 + 512        ;BX = offset
        int     0x13                    ;if(CF = BIOS(0x13, 0x02))
.10Q:   jnc     .10E                    ;{
.10T:   cdecl   puts, .e0               ;{puts(.e0);
        call    reboot                  ;reboot()
.10E:                                   ;}

        ;------------------------------------
        ;move stage2
        ;------------------------------------

        jmp     stage_2                 ;boot stage2

        ;------------------------------------
        ;data
        ;------------------------------------
.s0     db "Booting....", 0x0A, 0x0D, 0
.e0     db "Error:sector read", 0

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

;************************************************
;boot stage2
;************************************************
stage_2:
        ;-----------------------------------
        ;print strings
        ;-----------------------------------
        cdecl   puts, .s0

        ;-----------------------------------
        ;finish
        ;-----------------------------------
        jmp     $                       ;while(1)

        ;-----------------------------------
        ;data
        ;-----------------------------------
.s0     db "2nd stage...", 0x0A, 0x0D, 0

;************************************************
;pating 8Kbite
;************************************************
        times   (1024 * 8) - ($ - $$) db 0      ;8Kbyte

