" about terminal
if !g:myconf.isWin
    tnoremap <ESC> <C-\><C-n>
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
endif

" terminal true color
"set termguicolors

" GUI
"set guioptions+=a
" CUI
"set clipboard+=autoselect

" ssh接続中はマウス無効化
if !g:myconf.isWin && (!exists('$DISPLAY') || $TERM=~'^\(xterm\|vt\)')
  set mouse=""
endif

if g:myconf.isWin
    let g:python_host_prog="C:/Users/hungcat/.pyenv/neovim2/Scripts/python.exe"
    let g:python3_host_prog="C:/Users/hungcat/.pyenv/neovim3/Scripts/python.exe"
endif


