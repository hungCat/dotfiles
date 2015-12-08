let g:clang_format#style_options = {
			\ "AccessModifierOffset" : -4,
			\ "AllowShortIfStatementsOnASingleLine" : "true",
			\ "AlwaysBreakTemplateDeclarations" : "true",
			\ "IndentCaseLabels" : "false",
			\ "Standard" : "C++11",
			\ "TabWidth" : 4,
			\ "UseTab" : "Always",
			\ }

nnoremap <buffer>cf :<C-u>ClangFormat<CR>
vnoremap <buffer>cf :ClangFormat<CR>


