
" syntax color
" ---------------------
syntax on							" 色付き
set t_Co=256						" 256色対応

try
	colorscheme hybrid				" カラースキーム設定
	set background=dark				" 正しいカラースキームのために
catch
	colorscheme default
endtry
"highlight LineNr ctermfg=darkgrey

" font
set guifont=Consolas:h11:cANSI:qDRAFT
set ambiwidth=double    " 2バイト半角対策

set noundofile

