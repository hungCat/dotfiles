
" normal mode
" jkを見かけ上の行移動に
nnoremap j gj
onoremap j gj
xnoremap j gj
nnoremap k gk
onoremap k gk
xnoremap k gk
" 行頭行末への移動をShiftをつかって行えるように
nnoremap <S-h> ^
nnoremap <S-j> }
nnoremap <S-k> {
nnoremap <S-l> $

" matchpairs(対応する括弧への移動)をmキーに
noremap m  %
