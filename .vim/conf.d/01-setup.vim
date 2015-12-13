
if has('vim_starting') && !&compatible
	set nocompatible	" be iMproved
endif


" プラグインの読み込み

if !g:myconfig.is_installed('neobundle.vim')
	function! s:install_neobundle()
		" neobundle.vimの有無
		if g:myconfig.is_installed('neobundle.vim')
			return
		endif

		" gitの有無
		if !executable("git")
			if confirm('No git. Install now?', "Yes\nNo", 2) == 1
				if executable("yum") 
					execute "!sudo yum -y install git"
				elseif executable("apt-get")
					execute "!sudo apt-get -y install git"
				endif
			endif

			if !executable("git")
				echo "Please install git yourself."
				return
			endif
		endif

		" neobundle
		if confirm('Install NeoBundle now?', "Yes\nNo", 2) == 1
			if !isdirectory(g:myconfig.neobundle_dir)
				call mkdir(g:myconfig.neobundle_dir, "p")
			endif

			" git clone
			execute "!git clone git://github.com/Shougo/neobundle.vim "
						\ . g:myconfig.neobundle_dir . "/neobundle.vim"

			" source
			execute "source ~/.vimrc"

		endif
	endfunction
	" vim起動時に呼ぶように設定
	augroup install-neobundle
		autocmd!
		autocmd VimEnter * call s:install_neobundle()
	augroup END
endif
