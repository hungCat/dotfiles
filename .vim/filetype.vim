augroup filetypedetect
    au BufNewFile,BufRead .bash_aliase    setlocal filetype=sh
    au BufNewFile,BufRead .vimperatorrc   setlocal filetype=vim
    au BufNewFile,BufRead *.go            setlocal filetype=go
    au BufNewFile,BufRead *.ts            setlocal filetype=typescript
augroup END
