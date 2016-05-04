
if ! empty(neobundle#get("syntastic"))

	""" Recommended settings
	""" see https://github.com/scrooloose/syntastic#settings
	set statusline+=%#warningmsg#
	set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
	set statusline+=%*

	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_enable_signs = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_loc_list_height = 6
	let g:syntastic_check_on_open = 0	"ファイルオープン時にはチェックをしない
	let g:syntastic_check_on_wq = 0		"保存して終了時にはチェックしない

	" c++設定"
	let g:syntastic_c_check_header = 1
	let g:syntastic_cpp_check_header = 1
	let g:syntastic_cpp_compiler = "g++"
	let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wno-unused-parameter -Winit-self -Wfloat-equal -wsign-compare" 


	" go設定
	let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
	let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

	" python設定
	let g:syntastic_python_python_exec = '/usr/bin/python3'

endif
