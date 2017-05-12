


" インクルードパスを設定する
" gf などでヘッダーファイルを開きたい場合に影響する
setlocal path+=/usr/include/c++
setlocal path+=~/.local/include

" 最後に定義された include箇所へ移動して挿入モードへ
nnoremap <buffer><silent> <Space>ii :execute "?".&include<CR> :noh<CR> o









