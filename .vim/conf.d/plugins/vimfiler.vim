let g:vimfiler_as_default_explorer = 1

augroup vimfiler
	autocmd!
	autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)
augroup END

" key mapping
"!command VimFilerMyExplorer VimFiler -buffer-name=explorer -split -simple -winwidth=30 -no-quit<ENTER>
noremap t :VimFiler -buffer-name=explorer -split -simple -winwidth=30 -no-quit<ENTER>
