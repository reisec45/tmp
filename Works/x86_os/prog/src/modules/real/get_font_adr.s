get_font_adr:
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
        push    ax
        push    bx 
        push    si 
        push    es 
        push    bp  

        ;--------------------------------------- 
        ; 引数を取得 
        ;--------------------------------------- 
        mov     si, [bp + 4]            ; SI = SRC バッファ; 
        ;--------------------------------------- 
        ; フォントアドレスを取得 
        ;--------------------------------------- 
        mov     ax, 0x1130              ;get font address
        mov     bh, 0x06                ;8x 16 font (vga/mcga)
        int     10h                     ;ES:BP=FONT ADDRESS

        ;--------------------------------------- 
        ; フォントアドレスを保存 
        ;--------------------------------------- 
        mov     [si + 0], es            ; dst[0] = segment; 
        mov     [si + 2], bp            ; dst[1] = offset; 

        ;--------------------------------------- 
        ; 【レジスタ の 復帰】 
        ;--------------------------------------- 
        pop     bp 
        pop     es 
        pop     si 
        pop     bx
        pop     ax                              
        ;--------------------------------------- 
        ; 【スタック フレーム の 破棄】 
        ;--------------------------------------- 
        mov     sp, bp 
        pop     bp 
        ret

