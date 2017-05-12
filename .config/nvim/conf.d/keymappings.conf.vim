
" moving

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

" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
inoremap kk <Esc>
inoremap hh <Esc>
inoremap JJ <Esc>
inoremap KK <Esc>
inoremap HH <Esc>

" matchpairs(対応する括弧への移動)をmキーに
noremap m  %






" window

" まずはsを殺します
nnoremap s <Nop>
" 上下左右のwindowへの移動(wは次のwindowへ)
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sw <C-w>w
" windowを上下左右に移動(rは回転)
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sr <C-w>r
" tabの移動
nnoremap sn gt
nnoremap sp gT
" window最大化
nnoremap so <C-w>_<C-w>|
" window均等化
nnoremap sO <C-w>=
nnoremap s= <C-w>=
" バッファの移動
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
" 新規タブ
nnoremap st :<C-u>tabnew<CR>
" タブ一覧
nnoremap sT :<C-u>Unite tab<CR>
" split/vsplit
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
" quit
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>
" buffer list
nnoremap sb :<C-u>Unite buffer_tab -buffer-name=file<CR>
nnoremap sB :<C-u>Unite buffer -buffer-name=file<CR>

" Map for toggle
nnoremap <silent> s] :TagbarToggle<CR>

" plugins
" 
" [vim-submode]
" ajust window
" s>, s<, s+, s-
"
" [tagbar]
" open tagbar
" s]







" misc

" normal modeでも即改行
nnoremap <CR> A<CR><Esc>
" ==でインデント整理(''で元の位置に戻る)
nnoremap == gg=G''
" 全バッファ閉じる
nnoremap qq :qall<CR>


