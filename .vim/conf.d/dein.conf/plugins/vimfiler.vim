
" set vimfiler as default explorer
let g:vimfiler_as_default_explorer = 1

" sorts directories as top
let g:vimfiler_directory_display_top = 1
" set default mode as safe mode
let g:vimfiler_safe_mode_by_default = 1
" follow current directory 
let g:vimfiler_enable_auto_cd = 1

" my explorer
command! VimFilerMyExplorer VimFiler -buffer-name=explorer -split -simple -winwidth=28 -no-quit

augroup vimfiler
    autocmd!

    " Don't let <CR> enter the directory but let it open the directory
    autocmd FileType vimfiler nmap <buffer> <CR> <Plug>(vimfiler_expand_or_edit)

    " Automatically open vimfiler on start
    "autocmd VimEnter * VimFilerExplorer

    " If no files are specified, open vimfiler
    "autocmd VimEnter * if !argc() | VimFiler | endif

    " press sf to return 
    autocmd FileType vimfiler nmap <silent><buffer>sf <C-w><C-p>

augroup END

" key mapping
nnoremap <silent>sf :VimFilerMyExplorer<CR>

