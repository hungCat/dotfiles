if neobundle#tap('vim-go')

	set rtp+=$GOROOT/misc/vim
	exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
	
"	let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
"	let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }


  call neobundle#untap()
endif

