
if neobundle#is_installed('neosnippet')

	let s:my_snippet = '~/.vim/snippets/'
	let g:neosnippet#snippets_directory = s:my_snippet
    "let g:go_snippet_engine = "neosnippet"

	" key binding

	" Plugin key-mappings.  " <C-k>でsnippetの展開
	imap <C-k> <Plug>(neosnippet_expand_or_jump)
	smap <C-k> <Plug>(neosnippet_expand_or_jump)
	xmap <C-k> <Plug>(neosnippet_expand_target)


	" tabで候補選択 (cf. neocomplete/cache.vim, neosnippet.vim)
	imap <expr><Tab>
				\ pumvisible() ? "\<C-n>" :
				\ neosnippet#expandable_or_jumpable() ?
				\ "\<Plug>(neosnippet_expand_or_jump)" : "\<Tab>" 

	imap <expr><S-Tab>
				\ pumvisible() ? "\<C-p>" :
				\ neosnippet#expandable_or_jumpable() ?
				\ "\<Plug>(neosnippet_expand_or_jump)" : "\<S-Tab>" 


	" For conceal markers.
	if has('conceal')
		set conceallevel=2 concealcursor=niv
	endif

endif
