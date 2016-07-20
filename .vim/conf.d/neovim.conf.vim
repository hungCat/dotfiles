" about terminal
tnoremap <ESC> <C-\><C-n>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

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

