
if neobundle#is_installed('neosnippet')

	let s:my_snippet = '~/.vim/snippet/'
	let g:neosnippet#snippets_directory = s:my_snippet

	" key binding

	" Plugin key-mappings.  " <C-k>でsnippetの展開
	imap <C-k> <Plug>(neosnippet_expand_or_jump)
	smap <C-k> <Plug>(neosnippet_expand_or_jump)
	xmap <C-k> <Plug>(neosnippet_expand_target)

	" For conceal markers.
	if has('conceal')
		set conceallevel=2 concealcursor=niv
	endif

endif
