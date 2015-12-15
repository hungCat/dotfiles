

if ! empty(neobundle#get("lexima.vim"))
		
	" for reloadable
	let g:lexima_no_default_rules = 1
	call lexima#set_default_rules()

	"" 基本ルール設定
	"let g:lexima_enable_basic_rules = 1
	"" 括弧の展開時のインデントに対応
	"let g:lexima_enable_newline_rules = 1
	"" space入力時の補完
	"let g:lexima_enable_space_rules = 1
	"" 閉じ修飾子追加(不要？)
	"let g:lexima_enable_endwise_rules = 1

endif

