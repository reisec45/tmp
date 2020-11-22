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
;information got in real mode
;************************************************
FONT:
.seg:   dw 0
.off:   dw 0

;************************************************
;boot stage2
;************************************************

;************************************************
;modules
;************************************************
%include        "../modules/real/itoa.s"
%include        "../modules/real/get_drive_param.s"
%include        "../modules/real/get_font_adr.s"

stage_2:
        ;-----------------------------------
        ;print strings
        ;-----------------------------------
        cdecl   puts, .s0

        ;-----------------------------------
        ;get drive parameters
        ;-----------------------------------
        cdecl   get_drive_param, BOOT  ;AX = get_drive_param(BOOT);

        cmp     ax, 0
.10Q:   jne     .10E                    ;{
.10T:   cdecl   puts, .e0               ;{puts(.e0);
        call    reboot                  ;reboot()
.10E:                                   ;}

        ;-----------------------------------
        ;print drive parameters
        ;-----------------------------------
        mov     ax, [BOOT + drive.no]   ;AX = boot drive
        cdecl   itoa, ax, .p1, 2, 16, 0b0100    ;
        mov     ax, [BOOT + drive.cyln] ;
        cdecl   itoa, ax, .p2, 4, 16, 0b0100    ;
        mov     ax, [BOOT + drive.head] ;
        cdecl   itoa, ax, .p3, 2, 16, 0b0100    ;
        mov     ax, [BOOT + drive.sect] ;
        cdecl   itoa, ax, .p4, 2, 16, 0b0100    ;
        cdecl   puts, .s1
        
        ;-----------------------------------
        ;move next stage
        ;-----------------------------------
        jmp     stage_3rd               ;move next stage
        

        ;-----------------------------------
        ;data
        ;-----------------------------------
.s0     db "2nd stage...", 0x0A, 0x0D, 0
.s1     db " Drive:0x" 
.p1     db "  , C:0x" 
.p2     db "    , H:0x" 
.p3     db "  , S:0x" 
.p4     db "  ", 0x0A, 0x0D, 0 
.e0     db "Can't get drive parameter.", 0


;************************************************
;boot 3rd stage
;************************************************
stage_3rd:
        ;-----------------------------------
        ;print strings
        ;-----------------------------------
        cdecl   puts, .s0

        ;-----------------------------------
        ;use the font which is using in BIOS 
        ;-----------------------------------
        cdecl   get_font_adr, FONT      ;get font

        ;-----------------------------------
        ;print font address
        ;-----------------------------------
        cdecl   itoa, word[FONT.seg], .p1, 4, 16, 0b0100
        cdecl   itoa, word[FONT.off], .p2, 4, 16, 0b0100
        cdecl   puts, .s1

        ;-----------------------------------
        ;finish code
        ;-----------------------------------
        jmp     $

        ;-----------------------------------
        ;data
        ;-----------------------------------
.s0     db "3rd stage...", 0x0A, 0x0D, 0

.s1     db " Font Address="
.p1     db "ZZZZ:"
.p2     db "ZZZZ", 0x0A, 0x0D, 0
        db 0x0A, 0x0D, 0


;************************************************
;pating 8Kbite
;************************************************
        times   BOOT_SIZE - ($ - $$) db 0      ;8Kbyte


