
if ! empty(neobundle#get("vim-quickrun"))

	let g:quickrun_config = get(g:, 'quickrun_config', {})
	let g:quickrun_config._ = {
				\ 'runner'    : 'vimproc',
				\ 'runner/vimproc/updatetime' : 60,
				\ 'outputter' : 'error',
				\ 'outputter/error/success' : 'buffer',
				\ 'outputter/error/error'   : 'quickfix',
				\ 'outputter/buffer/split'  : ':rightbelow 8sp',
				\ 'outputter/buffer/close_on_empty' : 1,
				\ 'hook/shabadoubi_touch_henshin/enable' : 1,
				\ 'hook/shabadoubi_touch_henshin/wait' : 20,
				\ }
	let g:quickrun_config.cpp = {
				\ 'command': 'g++',
				\ 'cmdopt': '-std=c++11',
				\}
	let g:quickrun_config.make = {
				\ "command"   : "make",
				\ "exec" : "%c %o %a",
				\}
	let g:quickrun_config.makerun = {
				\ "command"   : "make",
				\ "exec" : "%c %o run %a",
				\}
	let g:quickrun_config.go = {
				\ 'command': 'go',
				\ 'exec': '%c run %s',
				\ }

	" interrapt quickrun
	nnoremap <expr><silent> <C-c> quickrun#is_running() ? quickrun#sweep_sessions() : "\<C-c>"

endif
