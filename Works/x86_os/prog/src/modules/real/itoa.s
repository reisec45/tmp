itoa: 

        ;--------------------------------------- 
        ; 【スタック フレーム の 構築】 
        ;--------------------------------------- 
                        ; + 12 | フラグ 
                        ; + 10 | 基数 
                        ; + 8 | バッファ サイズ 
                        ; + 6 | バッファ アドレス 
                        ; + 4 | 数値 ; + 2 | IP（ 戻り 番地） 
        push    bp      ; BP + 0 | BP（ 元 の 値） 
        mov     bp, sp  ; ------+-------- 
        

        ;--------------------------------------- 
        ; 【レジスタ の 保存】 
        ;---------------------------------------
        
        push    ax
        push    bx
        push    cx
        push    dx
        push    si
        push    di

        ;---------------------------------------
        ;get parameters
        ;---------------------------------------
        
        mov     ax, [bp + 4]    ;val = num
        mov     si, [bp + 6]    ;dst = address of buffer
        mov     cx, [bp + 8]    ;size = left size of buffer

        mov     di, si          ;buffer 最後尾
        add     di, cx          ;dst = &dst[size -1]
        dec     di
        
        mov     bx, word [bp + 12]      ;flag


        ;---------------------------------------
        ;符号付き判定
        ;---------------------------------------

        test    bx, 0b0001      ;if (flag & 0x01)
.10Q:   
        je      .10E            ;{
        cmp     ax, 0           ;if (val < 0)
.12Q:
        jge     .12E            ;  {
        or      bx, 0b0010      ;    flag |= 2
.12E:                           ;  }
.10E:                           ;}


        ;---------------------------------------
        ;符号出力判定
        ;---------------------------------------
        test    bx, 0b0010      ;if(flag & 0x02)
.20Q:   
        je      .20E            ;{
        cmp     ax, 0           ;if (val < 0)
.22Q:   
        jge     .22F            ;  {
        neg     ax              ;    val *= -1
        mov     [si], byte '-'  ;    *dst = '-'
        jmp     .22E            ;  }
.22F:                           ;else
                                ;  {
        mov     [si],byte '+'   ;    *dst= '+'
.22E:                           ;  }
        dec     cx              ;size--;
.20E:                           ;}


        ;---------------------------------------
        ;translate to ASCII
        ;---------------------------------------
        mov     bx, [bp + 10]   ;BX = 基数
.30L:                           ;do
                                ;{
        mov     dx, 0
        div     bx              ;DX = DX:AX % 基数
                                ;AX = DX:AX / 基数

        mov     si, dx          ;table
        mov     dl, byte [.ascii + si]  ;DL = ASCII[DX]

        mov     [di], dl                ;*dst = DL;
        dec     di                      ;dst--
        cmp     ax, 0
        loopnz  .30L                    ;}while(AX)
.30E:

        ;--------------------------------------- 
        ; 空欄 を 埋める 
        ;--------------------------------------- 
        cmp     cx, 0                   ; if (size) 
.40Q: 
        je      .40E                   ; { 
        mov     al, ' '                 ; AL = ' '; // ' 'で 埋める（ デフォルト 値） 
        cmp     [bp + 12], word 0b0100  ; if (flags & 0 x 04) 
.42Q: 
        jne     .42E                   ; { 
        mov     al, '0'                 ;   AL = '0'; // '0' で 埋める 
.42E:                                  ; } 
        std                             ;   // DF = 1（- 方向） 
        rep     stosb                   ;   while (--CX) *DI-- = ' '; 
.40E:                                  ; }


        ;--------------------------------------- 
        ;return register
        ;--------------------------------------- 

        pop     di 
        pop     si 
        pop     dx 
        pop     cx 
        pop     bx 
        pop     ax 

        ;--------------------------------------- 
        ; 【スタック フレーム の 破棄】 
        ;--------------------------------------- 
        mov     sp, bp 
        pop     bp 
        ret 

.ascii  db      "0123456789ABCDEF"      ; 変換 テーブル

