get_drive_param:
        ;--------------------------------------- 
        ; 【スタック フレーム の 構築】 
        ;--------------------------------------- 
                                        ; + 4 | パラメータ バッファ 
                                        ; ------+---------------- 
                                        ; + 2 | IP（ 戻り 番地） 
        push    bp                      ; BP + 0 | BP（ 元 の 値）
        mov     bp, sp                  ; ------+-------- 

        
        ;--------------------------------------- 
        ; 【レジスタ の 保存】 
        ;--------------------------------------- 
        push    bx 
        push    cx 
        push    es 
        push    si 
        push    di 

        ;--------------------------------------- 
        ; 【処理 の 開始】 
        ;--------------------------------------- 
        mov     si, [bp + 4] ; SI = SRC バッファ; 

        mov     ax, 0                   ; Disk Base Table Pointer の 初期化 
        mov     es, ax                  ; ES = 0; 
        mov     di, ax                  ; DI = 0; 
        
        mov     ah, 8                   ; // get drive parameters 
        mov     dl, [si + drive.no]     ; DL = ドライブ 番号
        int     0x13                    ; CF = BIOS( 0 x 13, 8); 
.10Q:   
        jc      .10F                    ; if (0 == CF) //Failed

.10T:                                   ; { 
        mov     al, cl                  ; AX = セクタ 数 
        and     ax, 0x3F                ; // 下位 6 ビット のみ 有効
        
        shr     cl, 6                   ; CX = シリンダ 数 
        ror     cx, 8                   ; 
        inc     cx                      ; 
        
        movzx   bx, dh                  ; BX = ヘッド 数（ 1 ベース） 
        inc     bx                      ; 
       
        mov     [si + drive.cyln], cx   ; drive.syln = CX; // C: シリンダ 数 
        mov     [si + drive.head], bx   ; drive. head = BX; // H: ヘッド 数 
        mov     [si + drive.sect], ax   ; drive. sect = AX; // S: セクタ 数 
        jmp     .10E                    ; } 
.10F:                                   ; else ; { 
        mov     ax, 0                   ; AX = 0; // 失敗 
.10E:                                   ; }

        ;--------------------------------------- 
        ; 【レジスタ の 復帰】 
        ;--------------------------------------- 
        pop     di 
        pop     si 
        pop     es 
        pop     cx
        pop     bx                              
        ;--------------------------------------- 
        ; 【スタック フレーム の 破棄】 
        ;--------------------------------------- 
        mov     sp, bp 
        pop     bp 
        ret

