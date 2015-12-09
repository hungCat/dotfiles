if !&compatible
	set nocompatible	" be iMproved
endif

if has('vim_starting')
	" for runtime
	set rtp+=~/.vim
	" for NeoBundle
	set rtp+=$HOME/.vim/bundle/neobundle.vim
endif
call neobundle#begin()
NeoBundleFetch 'Shougo/neobundle.vim'

" NeoBundle plugins
runtime! conf.d/neobundle/*.vim

call neobundle#end()

filetype plugin indent on       " restore filetype

" check if NeoBundle plugins have installed
NeoBundleCheck

" plugins options
runtime! conf.d/neobundle/plugins/*.vim
