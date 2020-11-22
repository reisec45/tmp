"vim-plug
call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
"Plug 'w0rp/ale'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'cocopon/lightline-hybrid'
Plug 'itchyny/lightline.vim'
"Plug 'valloric/youcompleteme'
Plug 'cocopon/pgmnt.vim'
call plug#end()
let g:lightline = {} 
let g:lightline.colorscheme = 'hybrid'
let g:lightline_hybrid_style = 'plain'
if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif
" ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
" 矢印キーを無効にする

" 行頭へ移動
map <C-a> <Nop>
map <C-e> <Nop>
nnoremap <C-a> ^
inoremap <C-a> ^
" 行末へ移動
nnoremap <C-e> $
inoremap <C-e> $
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap j k
nnoremap k j

"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
"set showcmd
" 現在の行を強調表示
"set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
"左右のカーソル移動で行間移動可能にする。
set whichwrap=b,s,h,l,<,>,[,]
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
set autoindent    " 改行時に前の行のインデントを継続する
" インデントはスマートインデント
set smartindent
autocmd FileType * set formatoptions-=r
autocmd FileType * set formatoptions-=o
" ビープ音を可視化
"set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
"set laststatus=2
" コマンドラインの補完
set wildmenu
" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
set softtabstop=2
" 行頭でのTab文字の表示幅
set smarttab
set shiftwidth=2
" Tab文字を半角スペースにする
set expandtab
autocmd FileType asm setlocal tabstop=2 softtabstop=2 smarttab shiftwidth=2 expandtab
autocmd FileType c setlocal tabstop=2 softtabstop=2 smarttab shiftwidth=2 expandtab
" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
colorscheme iceberg
syntax on
set t_Co=256
set number
set clipboard+=autoselect
set clipboard=unnamedplus
autocmd VimLeave * call system('echo ' . shellescape(getreg('+')) . ' | xclip -selection clipboard')
set termguicolors
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
set laststatus=2
set noshowmode
