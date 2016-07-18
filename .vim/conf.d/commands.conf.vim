
" my commands
" ----------------------

command! -complete=file -nargs=1 Rsp rightbelow vsplit <args>
command! Ev Rsp $MYVIMRC
command! Rv source $MYVIMRC

command! E e sudo:%
command! W w sudo:%
command! WQ wq sudo:%
