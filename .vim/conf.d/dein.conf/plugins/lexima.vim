
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


" 登録用関数"{{{
"
" サブ関数
function! s:as_list(a)
  return type(a:a) == type([]) ? a:a : [a:a]
endfunction

" 無視ルール登録関数
function! s:add_ignore_rule(rule)
  let rule = copy(a:rule)
  let rule.input = rule.char
  let rule.input_after = ""
  call lexima#add_rule(rule)
endfunction

" メインのルール追加関数 第二引数に無視するルールを渡す
function! s:add_rule(rule, ...)
  call lexima#add_rule(a:rule)
  if a:0 == 0
    return
  endif

  for ignore in s:as_list(a:1)
    call s:add_ignore_rule(extend(copy(a:rule), ignore))
  endfor
endfunction
"}}}

" html"{{{


" >|<でインデント補完
call s:add_rule({
      \   "at" : '>\%#<',
      \   "char" : '<CR>',
      \   "input" : '<CR>',
      \	"input_after" : '<CR>',
      \   "filetype" : "html"
      \},[
      \	{"syntax" : ["String", "Comment"]}
      \])


