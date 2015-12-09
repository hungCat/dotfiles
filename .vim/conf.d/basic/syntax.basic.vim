
" syntax color
" ---------------------
syntax on							" 色付き
set t_Co=256						" 256色対応

" 全角スペースが可視化出来る(colorschemeより前)
scriptencoding utf-8
augroup highlightIdeographicSpace
	autocmd!
	autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=DarkGreen
	autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

try
	colorscheme hybrid				" カラースキーム設定
	set background=dark				" 正しいカラースキームのために
catch
	colorscheme desert
endtry
"highlight LineNr ctermfg=darkgrey
