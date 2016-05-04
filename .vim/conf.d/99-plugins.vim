
if g:myconfig.is_installed('neobundle.vim')
	" plugins settings
	" NeoBundleがインストールされている前提
	runtime! conf.d/plugins/*.vim

	" neobundle
	if !has('vim_starting')
		call neobundle#call_hook('on_source')
	endif
endif
