" my commands
" ----------------------

command! -complete=file -nargs=1 Rsp rightbelow vsplit <args>
command! Ev Rsp $MYVIMRC
command! Rv source $MYVIMRC

