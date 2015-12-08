

let s:my_snippet = '~/.vim/snippet/'
let g:neosnippet#snippets_directory = s:my_snippet

" key binding

" SuperTab like snippets behavior.
imap <expr><Tab>
			\ pumvisible() ? "\<C-n>" :
			\ neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<Tab>" 

imap <expr><S-Tab>
			\ pumvisible() ? "\<C-p>" :
			\ neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<S-Tab>" 

" Plugin key-mappings.  " <C-k>でsnippetの展開
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

