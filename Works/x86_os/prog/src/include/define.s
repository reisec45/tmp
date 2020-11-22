        BOOT_LOAD       equ     0x7c00  ;boot position of boot program
        KERNEL_LOAD     equ     0x0010_1000

        BOOT_SIZE       equ     (1024 * 8)      ;boot size
        KERNEL_SIZE     equ     (1024 * 8)      ;kernel size
        
        SECT_SIZE       equ     (512)           ;sector size
        
        BOOT_SECT       equ     (BOOT_SIZE / SECT_SIZE) ;number of sector of boot program
        KERNEL_SECT     equ     (KERNEL_SIZE / SECT_SIZE)

        BOOT_END        equ     (BOOT_LOAD + BOOT_SIZE)
        E820_RECORD_SIZE        equ     20

        
