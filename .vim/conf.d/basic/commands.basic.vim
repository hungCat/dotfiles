" my commands
" ----------------------

command! -complete=file -nargs=1 Rightsplit rightbelow vsplit <args>
command! Ev Rightsplit $MYVIMRC
command! Rv source $MYVIMRC



