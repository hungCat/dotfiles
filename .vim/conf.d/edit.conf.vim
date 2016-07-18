
" tab / indent
" ---------------------
set smarttab        " smart insert tab
set shiftround      " round indent by shiftwidth
set expandtab       " input some spaces instead of tab
set tabstop=4       " tab width on window
set shiftwidth=4    " shift width by auto indent
set softtabstop=4   " num of skipping spaces when type tab or bs in spaces
set autoindent      " follow indent of previous line
"set smartindent    " smart indent
set cindent         " C style indent
"set cinoptions=:0,N-s,l1,g0,t0,(0,j1,J1






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
set showcmd            " 入力中のコマンドを表示

" }}}



" scroll {{{
" ---------------------
set backspace=indent,eol,start    " Backspaceキーの影響範囲に制限を設けない
set whichwrap=b,s,h,l,<,>,[,]    " 行頭行末の左右移動で行をまたぐ
set scrolloff=8                    " 上下8行の視界を確保
set sidescrolloff=16            " 左右スクロール時の視界を確保
set sidescroll=1                " 左右スクロールは一文字づつ行う

" }}}


" files {{{
" ---------------------
set confirm        "保存されていないファイルがあるときは終了前に保存確認
set hidden        "保存されていないファイルがあるときでも別のファイルを開くことが出来る
set autoread    "外部でファイルに変更がされた場合は読みなおす
set nobackup    "ファイル保存時にバックアップファイルを作らない
set noswapfile    "ファイル編集中にスワップファイルを作らない

" }}}


" search"{{{
" ----------------------
set ignorecase  "大文字と小文字を区別しない
set smartcase   "大文字と小文字が混在した言葉で検索を行った場合に限り、大文字と小文字を区別する
set nohlsearch  "検索文字列をハイライトしない
set incsearch   "インクリメンタルサーチを行う
set wrapscan    "最後尾まで検索を終えたら次の検索で先頭に移る
set gdefault    "置換の時 g オプションをデフォルトで有効にする

"}}}


" beep"{{{
" ----------------------
"ビープ音すべてを無効にする
if !has('nvim')
    set visualbell t_vb=
endif
set noerrorbells        "エラーメッセージの表示時にビープを鳴らさない

"}}}


"}}}


" 高速ターミナル接続を行う
set ttyfast
