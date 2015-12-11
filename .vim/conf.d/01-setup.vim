

if has('vim_starting') && !&compatible
	set nocompatible	" be iMproved
endif




" プラグインの読み込み
if !executable("git")
	if executable("yum") 

	elseif executable("apt-get")

	else
		echo "Please install git."
		finish
	endif

endif

if !g:myconfig.is_installed('neobundle.vim')
	function! s:install_neobundle()
		if g:myconfig.is_installed('neobundle.vim')
			return
		endif

		if confirm('Install NeoBundle now?', "Yes\nNo", 2) == 1
			if !isdirectory(g:myconfig.neobundle_dir)
				call mkdir(g:myconfig.neobundle_dir, "p")
			endif

			execute "!git clone git://github.com/Shougo/neobundle.vim "
			\ . g:myconfig.neobundle_dir . "/neobundle.vim"

			execute "source ~/.vimrc"

		endif
	endfunction
	augroup install-neobundle
		autocmd!
		autocmd VimEnter * call s:install_neobundle()
	augroup END
endif
