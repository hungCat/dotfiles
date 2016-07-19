

" syntax color
" ---------------------
syntax on                           " 色付き
set t_Co=256                        " 256色対応

try
  colorscheme hybrid                " カラースキーム設定
  set background=dark               " 正しいカラースキームのために
catch
  colorscheme default
endtry
highlight LineNr ctermfg=darkgrey


" display
" ----------------------
set number                         " 行番号を表示する
set ruler                          " 現在位置を表示
"set cursorline                    " カーソル行の背景色を変える
"set cursorcolumn                  " カーソル位置のカラムの背景色を変える
set laststatus=2                   " ステータス行を常に表示
set cmdheight=2                    " メッセージ表示欄を2行確保
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l/%L,%c%V%8P
set showmatch                      " 対応する括弧を強調表示
set helpheight=999                 " ヘルプを画面いっぱいに開く
set list                           " 不可視文字を表示
" 不可視文字の表示記号指定
set listchars=eol:~,tab:^\ ,extends:>,precedes:<,trail:.

set title
set linespace=0        " 行間

" コマンド実行中は再描画しない
set lazyredraw

""""""""""""""""""""""""""""""
"全角スペースを表示
""""""""""""""""""""""""""""""
"コメント以外で全角スペースを指定しているので scriptencodingと、
"このファイルのエンコードが一致するよう注意！
"全角スペースが強調表示されない場合、ここでscriptencodingを指定すると良い。
"scriptencoding utf-8

"デフォルトのZenkakuSpaceを定義
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkGreen gui=reverse guifg=DarkGreen
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " ZenkakuSpaceをカラーファイルで設定するなら次の行は削除
    autocmd ColorScheme       * call ZenkakuSpace()
    " 全角スペースのハイライト指定
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    "autocmd VimEnter,WinEnter * match ZenkakuSpace '\%u3000'
  augroup END
  call ZenkakuSpace()
endif



