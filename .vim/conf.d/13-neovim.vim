if has('nvim')
    tnoremap <ESC> <C-\><C-n>
    autocmd BufWinEnter,WinEnter term://* startinsert
    autocmd BufLeave term://* stopinsert
endif
