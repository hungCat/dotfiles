"g:quickrun_config の初期化
if !exists("g:quickrun_config")
	let g:quickrun_config = {}
endif

let g:quickrun_config._ = {
			\       "runner" : "vimproc",
			\       "runner/vimproc/updatetime" : 40,
			\       'outputter' : 'error',
			\       'outputter/error/success' : 'buffer',
			\       'outputter/error/error'   : 'quickfix',
			\       "outputter/buffer/split" : ":botright 8sp",
			\       "hook/close_unite_quickfix/enable_hook_loaded" : 1,
			\       "hook/unite_quickfix/enable_failure" : 1,
			\       "hook/close_quickfix/enable_exit" : 1,
			\       "hook/close_buffer/enable_failure" : 1,
			\       "hook/close_buffer/enable_success" : 1,
			\       "hook/close_buffer/enable_empty_data" : 1,
			\       "hook/shabadoubi_touch_henshin/enable" : 1,
			\       "hook/shabadoubi_touch_henshin/wait" : 20,
			\}
let g:quickrun_config.cpp = {
			\		"command": "g++",
			\		"cmdopt": "-std=c++11",
			\}


