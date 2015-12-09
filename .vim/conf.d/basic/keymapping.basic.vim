" key mapping
" ----------------------

" general
" matchpairs(対応する括弧への移動)をmキーに
noremap m  %

" normal mode
" jkを見かけ上の行移動に
nnoremap j gj
onoremap j gj
xnoremap j gj
nnoremap k gk
onoremap k gk
xnoremap k gk
" 行頭行末への移動をShiftをつかって行えるように
nnoremap <S-h> ^
nnoremap <S-j> }
nnoremap <S-k> {
nnoremap <S-l> $
" normal modeでも即改行
nnoremap <CR> A<CR><ESC>
" ==でインデント整理(''で元の位置に戻る)
nnoremap == gg=G''

" insert mode
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
inoremap kk <Esc>
inoremap hh <Esc>
inoremap JJ <Esc>
inoremap KK <Esc>
inoremap HH <Esc>

" Omni補完をCtrl+Spaceで
" inoremap <C-Space> <C-x><C-o>
" inoremap <C-@> <C-x><C-o>
" inoremap <Nul> <C-x><C-o>


" tabで候補選択
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

