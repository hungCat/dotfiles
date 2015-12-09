
" clang コマンドの設定

" オプションを追加する
" filetype=cpp に対して設定する場合
let g:marching#clang_command#options = {
			\   "cpp" : "-std=c++11"
			\}

" インクルードディレクトリのパスを設定
let g:marching_include_paths = filter(
			\	split(glob('/usr/include/c++/*'), '\n') +
			\	split(glob('/usr/include/*/c++/*'), '\n') +
			\	split(glob('/usr/include/*/'), '\n'),
			\	'isdirectory(v:val)')

" neocomplete.vim と併用して使用する場合
if neobundle#is_installed('neocomplete') || neobundle#is_installed('neocomplcache')
	let g:marching_enable_neocomplete = 1
endif

" 補完中のワード挿入を禁止
imap <buffer> <C-x><C-o> <Plug>(marching_start_omni_complete)

