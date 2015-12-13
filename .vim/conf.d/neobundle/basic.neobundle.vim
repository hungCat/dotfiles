" Shougo

" 非同期処理
NeoBundle 'Shougo/vimproc.vim', {
			\   'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\   }
			\ }

if v:version > 702
	NeoBundle "Shougo/unite.vim"
	NeoBundle "Shougo/vimfiler"
	NeoBundle "osyo-manga/unite-quickfix"
	NeoBundle "osyo-manga/shabadou.vim"
endif


" omni complete
" if_luaが有効ならneocompleteを使う
NeoBundle has('lua') ? 'Shougo/neocomplete' : 'Shougo/neocomplcache'

" スニペット補完プラグイン
NeoBundleLazy 'Shougo/neosnippet.vim', {
			\ "autoload": {"insert": 1}}
" 各種スニペット
NeoBundleLazy 'Shougo/neosnippet-snippets', {
			\ "autoload": {"insert": 1}}


" カラースキーム
NeoBundle 'w0ng/vim-hybrid'

" 括弧自動閉じ
NeoBundle 'cohama/lexima.vim'
" コードテスト
NeoBundle 'thinca/vim-quickrun'
" grepを便利に
NeoBundle 'grep.vim'
" シンタックスチェック
NeoBundle 'scrooloose/syntastic'

" sudo.vim
" usage:
" vim sudo:hoge		sudo権限でhogeを編集
" :w sudo:%			sudo権限でwrite
" :w sudo:piyo		sudo権限でpiyoに保存
" :e sudo:%			sudo権限で開き直す
NeoBundle 'sudo.vim'

" set paste and nopaste automatically
NeoBundle 'ConradIrwin/vim-bracketed-paste'

" 連続したコマンドの入力補助
NeoBundle 'kana/vim-submode'

