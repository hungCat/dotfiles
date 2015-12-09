
" Completion"{{{
" ----------------------
" 別窓開かず、自動選択せず
set completeopt=menuone
",longest

"updatetime
set updatetime=200



" command line {{{
" ---------------------
" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000
set showcmd			" 入力中のコマンドを表示

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


"}}}


