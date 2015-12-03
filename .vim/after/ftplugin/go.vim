set nocompatible	" be iMproved

filetype off        " turn on at last


" folding memo"{{{
"----------------------------
" set foldmethod=marker
" folding: zf
" open: zo
" close: zc
" all open: zR
" all close: zM
"}}}


" NeoBundle {{{
" ----------------------
" NeoBundle install
" mkdir -p ~/.vim/bundle
" git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" ----------------------


" ---------------------
" NeoBundle start
" ---------------------


if has('vim_starting')
	set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))

" ここから NeoBundle でプラグインを設定します


" plugin for golang
NeoBundle "fatih/vim-go"

call neobundle#end()


" ---------------------
" NeoBundle end
" ---------------------
"}}}


" Syntastic settings"{{{
" ----------------------

" go設定
let g:syntastic_go_checkers = ['go', 'golint']

"}}}


filetype plugin indent on       " restore filetype

