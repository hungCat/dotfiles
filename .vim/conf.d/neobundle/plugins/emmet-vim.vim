let g:user_emmet_settings = {
			\	'variables': {
			\		'lang' : 'ja',
			\		'locale': 'ja-JP',
			\		'charset': 'UTF-8'
			\	}
			\}

" 補完有効化(Omniとか閉じタグ補完ではない)
let g:use_emmet_complete_tag = 1

" 補完キーをtabに
"let g:user_emmet_expandabbr_key = '<tab>'
"augroup EmmetExpand
"	autocmd!
"	autocmd FileType html imap <buffer><expr><tab>
"				\ pumvisible() ? "\<C-n>" : emmet#expandAbbrIntelligent("\<tab>")
"augroup END
"
