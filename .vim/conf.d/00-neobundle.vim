if !&compatible
	set nocompatible	" be iMproved
endif


"filetype off        " turn on at last


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
	set rtp+=$HOME/.vim/bundle/neobundle.vim
endif
call neobundle#begin()
NeoBundleFetch 'Shougo/neobundle.vim'

" ここから NeoBundle でプラグインを設定します

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
	NeoBundle "Shougo/vimfiler"
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


" cpp"{{{

" 色
NeoBundle "vim-jp/cpp-vim"

" code complete
NeoBundle "osyo-manga/vim-marching"

" clang format
NeoBundle "rhysd/vim-clang-format"

"}}}

" plugin for golang
NeoBundle "fatih/vim-go"




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

filetype plugin indent on       " restore filetype

NeoBundleCheck

" ---------------------
" NeoBundle end
" ---------------------
"}}}


