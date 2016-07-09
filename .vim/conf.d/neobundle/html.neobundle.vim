" HTML支援
NeoBundleLazy 'mattn/emmet-vim',{
			\"autoload" : {"filetypes" :[ "html" ]}
			\}

" HTML5+CSS3+Javascript syntax
" html5
NeoBundleLazy 'othree/html5.vim',{
			\"autoload" : {"filetypes" :[ "html" ]}
			\}
" css3
NeoBundleLazy 'hail2u/vim-css3-syntax',{
			\"autoload" : {"filetypes" :[ "html", "css" ]}
			\}

" JavaScript
NeoBundleLazy 'jelera/vim-javascript-syntax',{
			\"autoload" : {"filetypes" :[ "html", "javascript", 'typescript' ]}
			\}


NeoBundleLazy 'jason0x43/vim-js-indent', {
\ 'autoload' : {
\   'filetypes' : ['javascript', 'typescript', 'html'],
\}}
"let g:js_indent_logging = 1
let g:js_indent_typescript = 1


NeoBundleLazy 'leafgarland/typescript-vim', {
\ 'autoload' : {
\   'filetypes' : ['typescript'] }
\}

" JS libraries
NeoBundleLazy 'othree/javascript-libraries-syntax.vim',{
			\"autoload" : {"filetypes" :[ "html", "javascript", 'typescript' ]}
			\}
let g:used_javascript_libs = 'jquery'


" sass autocomplie
NeoBundleLazy 'AtsushiM/search-parent.vim', {
\ 'autoload' : {
\   'filetypes' : ['scss', 'sass'] }
\}
NeoBundleLazy 'AtsushiM/sass-compile.vim', {
\ 'autoload' : {
\   'filetypes' : ['scss', 'sass'] }
\}
