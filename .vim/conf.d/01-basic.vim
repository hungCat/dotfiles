


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
try
	colorscheme hybrid				" カラースキーム設定
	set background=dark				" 正しいカラースキームのために
catch
	colorscheme desert
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


