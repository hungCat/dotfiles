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
NeoBundleFetch 'Shougo/neobundle.vim'

" ここから NeoBundle でプラグインを設定します
"
" Shougo
" omni complete
" if_luaが有効ならneocompleteを使う
NeoBundle has('lua') ? 'Shougo/neocomplete' : 'Shougo/neocomplcache'

" スニペット補完プラグイン
NeoBundleLazy 'Shougo/neosnippet.vim', {
			\ "autoload": {"insert": 1}}
" 各種スニペット
NeoBundleLazy 'Shougo/neosnippet-snippets', {
			\ "autoload": {"insert": 1}}

" 非同期処理
NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'gmake -f make_unix.mak',
      \    },
      \ }
if v:version > 702
	NeoBundle "Shougo/unite.vim"
	NeoBundle "osyo-manga/unite-quickfix"
	NeoBundle "osyo-manga/shabadou.vim"
endif

" カラースキーム
NeoBundle 'w0ng/vim-hybrid'
"NeoBundle 'nanotech/jellybeans.vim'

" 括弧自動閉じ
NeoBundle 'cohama/lexima.vim'
" コードテスト
NeoBundle 'thinca/vim-quickrun'
" grepを便利に
NeoBundle 'grep.vim'
" シンタックスチェック
NeoBundle 'scrooloose/syntastic'






" HTML支援
NeoBundleLazy 'mattn/emmet-vim',{
			\"autoload" : {"filetypes" :[ "html" ]}
			\}
" HTML5+CSS3+Javascript syntax
NeoBundleLazy 'hail2u/vim-css3-syntax',{
			\"autoload" : {"filetypes" :[ "html" ]}
			\}
NeoBundleLazy 'othree/html5.vim',{
			\"autoload" : {"filetypes" :[ "html" ]}
			\}
NeoBundleLazy 'pangloss/vim-javascript',{
			\"autoload" : {"filetypes" :[ "html" ]}
			\}
NeoBundleLazy 'othree/javascript-libraries-syntax.vim',{
			\"autoload" : {"filetypes" :[ "html" ]}
			\}
let g:used_javascript_libs = 'jquery'

" nginx syntax
NeoBundle 'evanmiller/nginx-vim-syntax'

" tex
NeoBundleLazy 'lervag/vimtex', {
			\"autoload" : {"filetypes" :[ "tex" ]}
			\}

" 猫
" NeoBundle 'drillbits/nyan-modoki.vim'



" sudo.vim
" usage:
" vim sudo:hoge		sudo権限でhogeを編集
" :w sudo:%			sudo権限でwrite
" :w sudo:piyo		sudo権限でpiyoに保存
" :e sudo:%			sudo権限で開き直す
NeoBundle 'sudo.vim'

call neobundle#end()


NeoBundleCheck

" ---------------------
" NeoBundle end
" ---------------------
"}}}


" general{{{


" display {{{
" ----------------------
set number			" 行番号を表示する
set ruler			" 現在位置を表示
"set cursorline		" カーソル行の背景色を変える
"set cursorcolumn	" カーソル位置のカラムの背景色を変える
set laststatus=2	" ステータス行を常に表示
set cmdheight=2		" メッセージ表示欄を2行確保
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%c%V%8P
set showmatch		" 対応する括弧を強調表示
set helpheight=999	" ヘルプを画面いっぱいに開く
set list			" 不可視文字を表示
" 不可視文字の表示記号指定
set listchars=eol:~,tab:^\ ,extends:>,precedes:<,trail:.

set title
set linespace=0		" 行間

" 全角スペースが可視化出来る(colorschemeより前)
scriptencoding utf-8
augroup highlightIdeographicSpace
	autocmd!
	autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
	autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

" そのままペースト
augroup rawPasting
	autocmd!
	autocmd FileType * setlocal formatoptions-=ro
augroup END

" nyan_modoki
"let g:nyan_modoki_select_cat_face_number = 2
"let g:nayn_modoki_animation_enabled= 1

" }}}


" syntax color {{{
" ---------------------
syntax on							" 色付き
set t_Co=256						" 256色対応
"colorscheme default
"colorscheme jellybeans				" カラースキーム設定
set background=dark					" 正しいカラースキームのために
try
	colorscheme hybrid				" カラースキーム設定
catch
	colorscheme default
endtry
"highlight LineNr ctermfg=darkgrey

" }}}


" command line {{{
" ---------------------
" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000
set showcmd			" 入力中のコマンドを表示

" }}}


" tab / indent {{{
" ---------------------
" set expandtab		"タブ入力を複数の空白入力に置き換える
set tabstop=4		"画面上でタブ文字が占める幅
set shiftwidth=4	"自動インデントでずれる幅
set softtabstop=4	"連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set autoindent		"改行時に前の行のインデントを継続する
set smartindent		"改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set cindent			" C styleのオートインデント
"set cinoptions=:0,N-s,l1,g0,t0,(0,j1,J1

" }}}


" scroll {{{
" ---------------------
set backspace=indent,eol,start	" Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]	" 行頭行末の左右移動で行をまたぐ
set scrolloff=8					" 上下8行の視界を確保
set sidescrolloff=16			" 左右スクロール時の視界を確保
set sidescroll=1				" 左右スクロールは一文字づつ行う

" }}}


" files {{{
" ---------------------
set confirm		"保存されていないファイルがあるときは終了前に保存確認
set hidden		"保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread	"外部でファイルに変更がされた場合は読みなおす
set nobackup	"ファイル保存時にバックアップファイルを作らない
set noswapfile	"ファイル編集中にスワップファイルを作らない

" }}}


" search"{{{
" ----------------------
set hlsearch	"検索文字列をハイライトする
set incsearch	"インクリメンタルサーチを行う
set ignorecase	"大文字と小文字を区別しない
set smartcase	"大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set wrapscan	"最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault	"置換の時 g オプションをデフォルトで有効にする

"}}}


" beep"{{{
" ----------------------
"ビープ音すべてを無効にする
set visualbell t_vb=
set noerrorbells		"エラーメッセージの表示時にビープを鳴らさない

"}}}


" Completion"{{{
" ----------------------
" 別窓開かず、自動選択せず
set completeopt=menuone
",longest

"updatetime
set updatetime=200


"}}}


" key mapping"{{{
" ----------------------

" general
" matchpairs(対応する括弧への移動)をmキーに
noremap m  %

" normal mode
" jkを見かけ上の行移動に
nnoremap j gj
onoremap j gj
xnoremap j gj
nnoremap k gk
onoremap k gk
xnoremap k gk
" 行頭行末への移動をShiftをつかって行えるように
nnoremap <S-h> ^
nnoremap <S-j> }
nnoremap <S-k> {
nnoremap <S-l> $
" normal modeでも即改行
nnoremap <CR> A<CR><ESC>
" ==でインデント整理(''で元の位置に戻る)
nnoremap == gg=G''

" insert mode
" 入力モード中に素早くjjと入力した場合はESCとみなす
inoremap jj <Esc>
inoremap kk <Esc>
inoremap hh <Esc>
inoremap JJ <Esc>
inoremap KK <Esc>
inoremap HH <Esc>
" Omni補完をCtrl+Spaceで
" inoremap <C-Space> <C-x><C-o>
" inoremap <C-@> <C-x><C-o>
" inoremap <Nul> <C-x><C-o>


" tabで候補選択

"inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : "\<Tab>"
" SuperTab like snippets behavior.
imap <expr><TAB>
			\ pumvisible() ? "\<C-n>" :
			\ neosnippet#expandable_or_jumpable() ?
			\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>" 

inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Plugin key-mappings.  " <C-k>でsnippetの展開
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

"}}}


" my commands"{{{
" ----------------------

command! -complete=file -nargs=1 Rightsplit rightbelow vsplit <args>
command! EditVimrc Rightsplit $MYVIMRC
command! ReloadVimrc source $MYVIMRC

"}}}


"}}}


"plugin settings"{{{
" ----------------------


" neocomplcache/neocomplete settings"{{{
" ----------------------

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


elseif neobundle#is_installed('neocomplcache')
	" neocomplcache用設定
	let g:neocomplcache_enable_at_startup = 1
	let g:neocomplcache_enable_ignore_case = 1
	let g:neocomplcache_enable_smart_case = 1
	let g:neocomplcache_auto_completion_start_length = 2

	"	if !exists('g:neocomplcache_keyword_patterns')
	"		let g:neocomplcache_keyword_patterns = {}
	"	endif
	"	let g:neocomplcache_keyword_patterns._ = '\h\w*'

	let g:neocomplcache_force_overwrite_completefunc=1

	" omni patterns
	if !exists('g:neocomplcache_force_omni_patterns')
		let g:neocomplcache_force_omni_patterns = {}
	endif
	let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
	let g:neocomplcache_force_omni_patterns.c = 
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
	let g:neocomplcache_force_omni_patterns.cpp = 
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
	let g:neocomplcache_force_omni_patterns.h = 
				\ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
	let g:neocomplcache_force_omni_patterns.go = '\h\w*\.\?'

	" heavy features
	"let g:neocomplcache_enable_camel_case_completion = 1
	"let g:neocomplcache_enable_underbar_completion = 1


	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function()
		"return neocomplcache#smart_close_popup() . "\<CR>"
		" For no inserting <CR> key.
		return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
	endfunction
	" <TAB>: completion. (aleady set)
	"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><C-y>  neocomplcache#close_popup()
	inoremap <expr><C-e>  neocomplcache#cancel_popup()
	" Close popup by <Space>.
	"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"
endif

" }}}



" lexima.vim 括弧補完"{{{
" ----------------------
	
if exists('lexima#set_default_rules')
" 設定リセット(ユーザ定義のルールを消し去って、デフォルトルールを適用)
" 他プラグインにも影響をきたしそうだからできるだけ上で呼びたい
" 知らん！下で呼ぶぞ！！！
let g:lexima_no_default_rules = 1
call lexima#set_default_rules()


" 登録用関数"{{{
"
" サブ関数
function! s:as_list(a)
	return type(a:a) == type([]) ? a:a : [a:a]
endfunction

" 無視ルール登録関数
function! s:add_ignore_rule(rule)
	let rule = copy(a:rule)
	let rule.input = rule.char
	let rule.input_after = ""
	call lexima#add_rule(rule)
endfunction

" メインのルール追加関数 第二引数に無視するルールを渡す
function! s:add_rule(rule, ...)
	call lexima#add_rule(a:rule)
	if a:0 == 0
		return
	endif

	for ignore in s:as_list(a:1)
		call s:add_ignore_rule(extend(copy(a:rule), ignore))
	endfor
endfunction
"}}}

" html"{{{


" >|<でインデント補完
call s:add_rule({
			\   "at" : '>\%#<',
			\   "char" : '<CR>',
			\   "input" : '<CR>',
			\	"input_after" : '<CR>',
			\   "filetype" : "html"
			\},[
			\	{"syntax" : ["String", "Comment"]}
			\])
"}}}

endif

"}}}


" Quick run setting"{{{
" ----------------------
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


"}}}


" emmet-vim settings"{{{
" ----------------------
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
"}}}


" Syntastic settings"{{{
" ----------------------
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


" python設定
let g:syntastic_python_python_exec = '/usr/bin/python3'

"}}}


" vimtex {{{
""
let g:vimtex_latexmk_continuous = 1
let g:vimtex_latexmk_background = 1
"let g:vimtex_latexmk_options = '-pdf'
let g:vimtex_latexmk_options = '-pdfdvi'
"let g:vimtex_latexmk_options = '-pdfps'
let g:vimtex_view_general_viewer = 'cygstart'

" }}}


" neosnippet"{{{

let s:my_snippet = '~/.vim/snippet/'
let g:neosnippet#snippets_directory = s:my_snippet


"}}}

"}}}



filetype plugin indent on       " restore filetype


