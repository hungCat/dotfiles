
"====================================================
" Load dein.
"

function! s:install_dein(dein_dir)
  " gitの有無
  if !executable("git")
    if !has('kaoriya') && confirm('No git. Install now?', "Yes\nNo", 2) == 1
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

  " install dein
  if has('kaoriya') || confirm('Install dein now?', "Yes\nNo", 2) == 1
    if !isdirectory(a:dein_dir)
      call mkdir(a:dein_dir, "p")
    endif

    " git clone
    execute '!git clone https://github.com/Shougo/dein.vim' a:dein_dir

  endif
endfunction

if !exists("*s:source_vimrcs")
  let s:here = expand('<sfile>:p')
  function s:source_vimrcs() abort
    if has('nvim')
      execute 'source' findfile('init.vim', s:here . ';')
    else
      execute 'source' findfile('.vimrc', s:here . ';')
      if has('gui_running')
        execute 'source' findfile('.gvimrc', s:here . ';')
      endif
    endif
  endfunction
endif





" main


" http://vim-jp.org/vimdoc-ja/editing.html#file-searching
let s:dein_dir = finddir('dein.vim', g:myconf.cache . '/**')

if s:dein_dir == ''
  let s:dein_dir = g:myconf.cache . '/dein/repos/github.com/Shougo/dein.vim'
  if !isdirectory(s:dein_dir)
    " run when vim enter
    "augroup MyAutoCmd
    "  autocmd BufEnter * nested call s:install_dein(s:dein_dir) | call s:source_vimrcs()
    "augroup END
    call s:install_dein(s:dein_dir)
    "call s:source_vimrcs()
  endif
endif
if &runtimepath !~ '/dein.vim'
  execute 'set runtimepath^=' . substitute(fnamemodify(s:dein_dir, ':p'), '\(/\|\\\)$', '', '')
endif



