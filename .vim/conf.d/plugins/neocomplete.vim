if neobundle#is_installed('neocomplete')
	" neocomplete用設定
	let g:neocomplete#enable_at_startup = 1
	let g:neocomplete#enable_ignore_case = 1
	let g:neocomplete#enable_smart_case = 1
	let g:neocomplete#auto_completion_start_length = 2

	"	if !exists('g:neocomplete#keyword_patterns')
	"		let g:neocomplete#keyword_patterns = {}
	"	endif
	"	let g:neocomplete#keyword_patterns._ = '\h\w*'

	let g:neocomplete#force_overwrite_completefunc = 1

	" neocomplete.vim と併用して使用する場合は以下の設定も行う
	if !exists('g:neocomplete#force_omni_input_patterns')
		let g:neocomplete#force_omni_input_patterns = {}
	endif
	let g:neocomplete#force_omni_input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
	let g:neocomplete#force_omni_input_patterns.c =
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
	let g:neocomplete#force_omni_input_patterns.cpp =
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
	let g:neocomplete#force_omni_input_patterns.h =
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
	let g:neocomplete#force_omni_input_patterns.go = '\h\w*\.\?'


endif
