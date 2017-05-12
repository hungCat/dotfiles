
"====================================================
" init.conf.vim

let g:myconf = {}

let g:myconf.cache = substitute(fnamemodify(
      \ empty($XDG_CACHE_HOME) ? '~/.cache' : $XDG_CACHE_HOME
      \ , ':p'), '\(/\|\\\)$', '', '')

let g:myconf.isWin = has('win32') || has('win64')
" has('win95') || has('win16') || 

"" shell の設定
"if g:myconf.isWin
"	set shell=C:\WINDOWS\system32\cmd.exe
"  set runtimepath+=$HOME/.vim,$HOME/.vim/after
"endif
if g:myconf.isWin
	"set shell=C:\users\hungcat\items\programs\winpty-neovim-demo\build\winpty-agent.exe
	"set runtimepath+=$HOME/items/programs/winpty-neovim-demo/build
    "set shell=winpty-agent.exe
  "set runtimepath+=$HOME/.vim,$HOME/.vim/after
endif


" Use English interface.
language message C


"====================================================
" others 


"let g:loaded_gzip              = 1
"let g:loaded_tar               = 1
"let g:loaded_tarPlugin         = 1
"let g:loaded_zip               = 1
"let g:loaded_zipPlugin         = 1
let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1

