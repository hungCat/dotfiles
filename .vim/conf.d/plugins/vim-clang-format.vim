let g:clang_format#style_options = {
			\ "AccessModifierOffset" : -4,
			\ "AllowShortIfStatementsOnASingleLine" : "true",
			\ "AlwaysBreakTemplateDeclarations" : "true",
			\ "IndentCaseLabels" : "false",
			\ "Standard" : "C++11",
			\ "TabWidth" : 4,
			\ "UseTab" : "Always",
			\ }


nnoremap cf :<C-u>ClangFormat<CR>
vnoremap cf :ClangFormat<CR>


