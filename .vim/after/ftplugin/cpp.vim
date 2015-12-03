set nocompatible	" be iMproved

filetype off        " turn on at last


" folding memo"{{{
"----------------------------
" set foldmethod=marker
" folding: zf
" open: zo
" close: zc
" all open: zR
" all close: zM
"}}}


" NeoBundle {{{
" ----------------------
" NeoBundle install
" mkdir -p ~/.vim/bundle
" git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" ----------------------


" ---------------------
" NeoBundle start
" ---------------------


if has('vim_starting')
	set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))

" ここから NeoBundle でプラグインを設定します


" cpp
" 色
NeoBundle "vim-jp/cpp-vim"

" code complete
NeoBundle "osyo-manga/vim-marching"

" clang format
NeoBundle "rhysd/vim-clang-format"


call neobundle#end()


" ---------------------
" NeoBundle end
" ---------------------
"}}}


" cpp"{{{
" ----------------------


" インクルードパスを設定する
" gf などでヘッダーファイルを開きたい場合に影響する
setlocal path+=/usr/include/c++
setlocal path+=~/.local/include

" 最後に定義された include箇所へ移動して挿入モードへ
nnoremap <buffer><silent> <Space>ii :execute "?".&include<CR> :noh<CR> o

endfunction



"}}}


"plugin settings"{{{
" ----------------------


" vim-marching"{{{
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

"}}}


" Quick run setting"{{{
" ----------------------
"g:quickrun_config の初期化
if !exists("g:quickrun_config")
	let g:quickrun_config = {}
endif

let g:quickrun_config.cpp = {
			\		"command": "g++",
			\		"cmdopt": "-std=c++11",
			\}


"}}}


" Syntastic settings"{{{
" ----------------------
" c++設定"
let g:syntastic_c_check_header = 1
let g:syntastic_h_check_header = 1
let g:syntastic_h_compiler = "g++"
let g:syntastic_h_compiler_options = "-std=c++11 -Wall -Wextra -Wno-unused-parameter -Winit-self -Wfloat-equal" " 
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wno-unused-parameter -Winit-self -Wfloat-equal" " 

"}}}


" clangformat"{{{
let g:clang_format#style_options = {
			\ "AccessModifierOffset" : -4,
			\ "AllowShortIfStatementsOnASingleLine" : "true",
			\ "AlwaysBreakTemplateDeclarations" : "true",
			\ "IndentCaseLabels" : "false",
			\ "Standard" : "C++11",
			\ "TabWidth" : 4,
			\ "UseTab" : "Always",
			\ }

nnoremap <buffer>cf :<C-u>ClangFormat<CR>
vnoremap <buffer>cf :ClangFormat<CR>

"}}}


" }}}




filetype plugin indent on       " restore filetype

