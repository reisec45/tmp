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
ACPI_DATA:
.adr:   dd 0
.len:   dd 0

;************************************************
;modules
;************************************************
%include        "../modules/real/itoa.s"
%include        "../modules/real/get_drive_param.s"
%include        "../modules/real/get_font_adr.s"
%include        "../modules/real/get_mem_info.s"
%include        "../modules/real/kbc.s"
%include        "../modules/real/lba_chs.s"
%include        "../modules/real/read_lba.s"

;************************************************
;boot stage2
;************************************************

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

        ;------------------------------------------
        ; メモリ情報の取得と表示
        ;------------------------------------------
        cdecl   get_mem_info

        mov     eax, [ACPI_DATA.adr]
        cmp     eax, 0
        je      .10E

        cdecl   itoa, ax, .p4, 4, 16, 0b0100
        shr     eax, 16
        cdecl   itoa, ax, .p3, 4, 16, 0b0100
        cdecl   puts, .s2
.10E:

        ;------------------------------------------
        ;jump to next stage
        ;------------------------------------------
        jmp stage_4

        ;------------------------------------------
        ; データ
        ;------------------------------------------
.s0     db "3rd stage...", 0x0A, 0x0D, 0
.s1     db " Font Address="
.p1     db "ZZZZ:"
.p2     db "ZZZZ", 0x0A, 0x0D, 0
        db 0x0A, 0x0D, 0
.s2     db " ACPI data="
.p3     db "ZZZZ"
.p4     db "ZZZZ", 0x0A, 0x0D, 0

;***********************************************************
; boot 4th_stage
;***********************************************************
stage_4:
        ;------------------------------------------
        ;print strings
        ;------------------------------------------
        cdecl   puts, .s0

        ;------------------------------------------
        ;enable A20 Gate
        ;------------------------------------------
        cli                                     ;disable intterpt

        cdecl   KBC_Cmd_Write, 0xAD             ;disable keyboard

        cdecl   KBC_Cmd_Write, 0xD0             ;command of read output port
        cdecl   KBC_Data_Read, .key             ;data of output data

        mov     bl, [.key]                      ;BL = key
        or      bl, 0x02                        ;BL |= 0x02 ;enable A20

        cdecl   KBC_Cmd_Write, 0xD1             ;command of write output port
        cdecl   KBC_Data_Write, bx              ;data of output

        cdecl   KBC_Cmd_Write, 0xAE             ;enable keyboard

        sti                                     ;enable intrrept

        ;------------------------------------------
        ;print strings
        ;------------------------------------------
        cdecl   puts, .s1
        
        ;------------------------------------------
        ;test of keyboard led
        ;------------------------------------------
        cdecl   puts, .s2

        mov     bx, 0
.10L:
        ;waiting for input from keyboard
        mov     ah, 0x00
        int     0x16                            ;AL = BIOS(0x16,0x00)

        cmp     al, '1'                         ;jump error if under 1
        jb      .10E

        cmp     al, '3'
        ja      .10E                            ;go through if under 4

        mov     cl, al                          ;CL = 0x31 ~ 0x33
        dec     cl                              ;CL = 0x30 ~ 0x32        
        and     cl, 0x03                        ;CL &= 0x003; CL = 0 ~ 2

        mov     ax, 0x0001                
        shl     ax, cl                          ;AX = 0x01 or 0x02 or 0x04
        xor     bx, ax                          ;BX ^= AX //reverse

        ;------------------------------------------
        ;sent LED command
        ;------------------------------------------
        cli

        cdecl   KBC_Cmd_Write, 0xAD             ;disable keyboard

        cdecl   KBC_Data_Write, 0xED            ;LED command
        cdecl   KBC_Data_Read, .key             ;

        cmp     [.key], byte 0xFA
        jne     .11F

        cdecl   KBC_Data_Write, bx              ;output LED data

        jmp     .11E
.11F:
        cdecl   itoa, word [.key], .e1, 2, 16, 0b0100
        cdecl   puts, .e0
.11E:
        cdecl   KBC_Cmd_Write, 0xAE

        sti

        jmp     .10L

.10E:

        ;------------------------------------------
        ;print strings
        ;------------------------------------------
        cdecl   puts, .s3

        ;------------------------------------------
        ; jump to stage_5
        ;------------------------------------------
        jmp stage_5
 
.s0:    db "4th stage...", 0x0A, 0x0D, 0
.s1:    db " A20 Gate Enabled.", 0x0A, 0x0D, 0
.s2:    db " Keyboard LED TEST...",0
.s3:    db "(done)", 0x0A, 0x0D, 0
.e0:    db "["
.e1:    db "ZZ]", 0

.key:   dw 0

;***********************************************************
;stage_5
;***********************************************************
stage_5:
        ;------------------------------------------
        ;print string
        ;------------------------------------------
        cdecl puts, .s0

        ;------------------------------------------
        ;read kernel
        ;------------------------------------------
        cdecl   read_lba, BOOT, BOOT_SECT, KERNEL_SECT, BOOT_END
                                                ;AX = read_lba(lba, ...)

        cmp     ax, KERNEL_SECT                 ;if(AX != CX)
.10Q:   
        jz      .10E
.10T:
        cdecl   puts, .e0
        call    reboot
.10E:
        ;------------------------------------------
        ; 処理の終了
        ;------------------------------------------
        jmp $

.s0     db "5th stage...", 0x0A, 0x0D, 0
.e0     db "Failure load kernel...", 0x0A, 0x0D, 0
;***********************************************************
;  パディング（このファイルは8Kバイトとする）
;***********************************************************
        times BOOT_SIZE - ($ - $$) db 0
