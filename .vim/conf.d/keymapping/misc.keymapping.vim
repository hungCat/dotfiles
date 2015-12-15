" normal modeでも即改行
nnoremap <CR> A<CR><ESC>
" ==でインデント整理(''で元の位置に戻る)
nnoremap == gg=G''

" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
inoremap kk <Esc>
inoremap hh <Esc>
inoremap JJ <Esc>
inoremap KK <Esc>
inoremap HH <Esc>

" 全バッファ閉じる
nnoremap qq :qall<CR>

" Omni補完をCtrl+Spaceで
" inoremap <C-Space> <C-x><C-o>
" inoremap <C-@> <C-x><C-o>
" inoremap <Nul> <C-x><C-o>

