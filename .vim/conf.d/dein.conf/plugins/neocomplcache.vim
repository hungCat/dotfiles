" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Enable omni completion.
augroup NeoComplcacheOmniFuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup END

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
"let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '\h\w*\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '\h\w*\%(\.\|->\|::\)'
let g:neocomplcache_force_omni_patterns.h = '\h\w*\%(\.\|->\|::\)'
let g:neocomplcache_force_omni_patterns.go = '\h\w*\.'


" ここはpathに書くようなinclude pathを書く
if !exists('g:neocomplcache_include_paths')
  let g:neocomplcache_include_paths = {}
endif
"let g:neocomplcache_include_paths.cpp = '.,/usr/include/c++/4.8.3,~/.local/include'
let g:neocomplcache_include_paths.cpp = join(filter(
      \	split(glob('/usr/include/c++/*'), '\n') +
      \	split(glob('~/.local/include/'), '\n'),
      \	'isdirectory(v:val)'), ',')


