
if g:myconfig.is_installed('neobundle.vim')
	" plugins settings
	" NeoBundleがインストールされている前提
	runtime! conf.d/plugins/*.vim
endif
