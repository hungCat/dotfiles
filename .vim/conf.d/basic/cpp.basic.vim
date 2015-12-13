
"" include pathの追加
"execute "set path+=" . join(filter(
"			\	split(glob('/usr/include/c++/*'), '\n') +
"			\	split(glob('/usr/include/*/c++/*'), '\n') +
"			\	split(glob('/usr/include/*/'), '\n'),
"			\	'isdirectory(v:val)'), ',')

