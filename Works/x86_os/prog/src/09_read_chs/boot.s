;************************************************
;macro
;************************************************
%include        "../include/define.s"
%include        "../include/macro.s"

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

        sti                     ;allow interrupt
        
        ;------------------------------------
        ;save boot drive
        ;------------------------------------
        mov     [BOOT + drive.no], dl ;save boot drive

        ;------------------------------------
        ;print char
        ;------------------------------------
        cdecl   puts, .s0       ;puts(.s0)

        ;------------------------------------
        ;read all sector
        ;------------------------------------
        mov     bx, BOOT_SECT - 1       ;BX = number of boot sector
        mov     cx, BOOT_LOAD + SECT_SIZE       ;CX = silinda/sector
        

        cdecl   read_chs, BOOT, bx, cx  ;AX = read_chs(BOOT, BX, CX);

        cmp     ax, bx
.10Q:   jz      .10E                    ;{
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
  istruc drive
    at drive.no,        dw 0    ;number of drive
    at drive.cyln,      dw 0    ;C:silinda
    at drive.head,      dw 0    ;H:head
    at drive.sect,      dw 2    ;sector
  iend

.DRIVE: 
        dw 0            ;number of drive

;************************************************
;modules
;************************************************

%include        "../modules/real/puts.s"
%include        "../modules/real/reboot.s"
%include        "../modules/real/read_chs.s"
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
        times   BOOT_SIZE - ($ - $$) db 0      ;8Kbyte

