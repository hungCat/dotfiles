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
" 忘れた
nnoremap sN :<C-u>bn<CR>
nnoremap sP :<C-u>bp<CR>
" 新規タブ
nnoremap st :<C-u>tabnew<CR>
" 忘れた
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

if g:myconfig.is_installed('vim-submode')
	" windowの大きさ調整
	call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
	call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
	call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
	call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
	call submode#map('bufmove', 'n', '', '>', '<C-w>>')
	call submode#map('bufmove', 'n', '', '<', '<C-w><')
	call submode#map('bufmove', 'n', '', '+', '<C-w>+')
	call submode#map('bufmove', 'n', '', '-', '<C-w>-')
endif

