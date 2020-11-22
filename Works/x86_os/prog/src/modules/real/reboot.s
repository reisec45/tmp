reboot:

        ;---------------------------------
        ;print message
        ;---------------------------------
        cdecl   puts, .s0               ;print message of reboot


        ;---------------------------------
        ;waiting for key input
        ;---------------------------------
.10L:                                   ;do
                                        ;{
        mov     ah, 0x10                ;//waiting for key input
        int     0x16                    ;AL = BIOS(0x16,0x10);

        cmp     al,' '                  ;ZF = AL =='';
        jne     .10L                    ;}while(!ZF);

        ;---------------------------------
        ;output '\n'
        ;---------------------------------
        cdecl   puts, .s1               ;'\n'

        ;---------------------------------
        ;reboot
        ;---------------------------------
        int     0x19                    ;BIOS(0x19);    //reboot();

        ;---------------------------------
        ;data of strings
        ;---------------------------------
.s0     db      0x0A, 0x0D, "Push SPACE key to reboot...", 0
.s1     db      0x0A, 0x0D, 0x0A,0x0D,0
