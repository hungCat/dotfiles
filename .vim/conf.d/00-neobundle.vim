if !&compatible
	set nocompatible	" be iMproved
endif

if has('vim_starting')
	set rtp+=$HOME/.vim/bundle/neobundle.vim
endif
call neobundle#begin()
NeoBundleFetch 'Shougo/neobundle.vim'

" ここから NeoBundle でプラグインを設定します
set runtimepath+=~/.vim
runtime! conf.d/neo/*.vim

call neobundle#end()

filetype plugin indent on       " restore filetype

NeoBundleCheck
