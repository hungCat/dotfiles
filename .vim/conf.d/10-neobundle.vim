if has('vim_starting')
	if !&compatible
		set nocompatible	" be iMproved
	endif

	" for NeoBundle
	execute "set rtp+=" . g:myconfig.neobundle_dir . "/neobundle.vim"
endif

if g:myconfig.is_installed('neobundle.vim')
	call neobundle#begin()

	if neobundle#load_cache()
		" NeoBundle plugins
		NeoBundleFetch 'Shougo/neobundle.vim'
		runtime! conf.d/neobundle/*.vim
		NeoBundleCheck
		" check if NeoBundle plugins have installed
		NeoBundleSaveCache
	endif

	call neobundle#end()
	filetype plugin indent on       " restore filetype
endif


let g:myconfig.isLoaded.bundle = "Okay!"
