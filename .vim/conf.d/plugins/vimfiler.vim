let g:vimfiler_as_default_explorer = 1

" override VimFilerExplorer
command! VimFilerMyExplorer VimFiler -buffer-name=explorer -split -simple -winwidth=30 -no-quit

augroup vimfiler
	autocmd!

	" Don't let <CR> enter the directory but let it open the directory
	autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)

	" Automatically open vimfiler on start
	"autocmd VimEnter * VimFilerExplorer
	
	" If no files are specified, open vimfiler
	"autocmd VimEnter * if !argc() | VimFiler | endif

augroup END

" key mapping
nnoremap <silent>t :VimFilerMyExplorer<CR>

