scriptencoding utf-8

" グローバル汚さないマン
let g:myconfig = {}

" プラグインのインストールディレクトリ
let g:myconfig.neobundle_dir = expand(exists("$VIM_NEOBUNDLE_PLUGIN_DIR") ? $VIM_NEOBUNDLE_PLUGIN_DIR : '~/.vim/bundle')

" pluginがインストールされているかどうか
function! g:myconfig.is_installed(...) abort
	let l:plugin_name = a:0 >= 1 ? a:1 : 'neobundle.vim'
	return isdirectory(g:myconfig.neobundle_dir . '/' . l:plugin_name)
endfunction


" cppインクルードディレクトリ
let g:myconfig.cpp_include_dirs = expand(exists("$VIM_CPP_INCLUDE_DIR") ? $VIM_CPP_INCLUDE_DIR : '')

" shell の設定
if has('win95') || has('win16') || has('win32')
	set shell=C:\WINDOWS\system32\cmd.exe
endif


