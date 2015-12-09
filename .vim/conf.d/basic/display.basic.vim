" display
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

