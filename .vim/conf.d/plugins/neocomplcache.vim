

if neobundle#is_installed('neocomplcache')
	" neocomplcache用設定
	let g:neocomplcache_enable_at_startup = 1
	let g:neocomplcache_enable_ignore_case = 1
	let g:neocomplcache_enable_smart_case = 1
	let g:neocomplcache_auto_completion_start_length = 2

	"	if !exists('g:neocomplcache_keyword_patterns')
	"		let g:neocomplcache_keyword_patterns = {}
	"	endif
	"	let g:neocomplcache_keyword_patterns._ = '\h\w*'

	let g:neocomplcache_force_overwrite_completefunc=1

	" omni patterns
	if !exists('g:neocomplcache_force_omni_patterns')
		let g:neocomplcache_force_omni_patterns = {}
	endif
	let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
	let g:neocomplcache_force_omni_patterns.c = 
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
	let g:neocomplcache_force_omni_patterns.cpp = 
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
	let g:neocomplcache_force_omni_patterns.h = 
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
	let g:neocomplcache_force_omni_patterns.go = '\h\w*\.\?'

	" heavy features
	"let g:neocomplcache_enable_camel_case_completion = 1
	"let g:neocomplcache_enable_underbar_completion = 1


	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function()
		"return neocomplcache#smart_close_popup() . "\<CR>"
		" For no inserting <CR> key.
		return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
	endfunction
	" <TAB>: completion. (aleady set)
	"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><C-y>  neocomplcache#close_popup()
	inoremap <expr><C-e>  neocomplcache#cancel_popup()
	" Close popup by <Space>.
	"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
endif



