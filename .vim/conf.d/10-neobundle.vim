if has('vim_starting')
	if !&compatible
		set nocompatible	" be iMproved
	endif

	" for NeoBundle
	execute "set rtp+=" . g:myconfig.neobundle_dir . "/neobundle.vim"
endif

if g:myconfig.is_installed('neobundle.vim')
	call neobundle#begin()
	NeoBundleFetch 'Shougo/neobundle.vim'

	" NeoBundle plugins
	runtime! conf.d/neobundle/*.vim

	call neobundle#end()

	filetype plugin indent on       " restore filetype

	" check if NeoBundle plugins have installed
	NeoBundleCheck
endif
