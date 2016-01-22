
if ! empty(neobundle#get("vim-clang-format"))

    let g:clang_format#style_options = {
                \ 'AccessModifierOffset' : -4,
                \ 'AllowShortIfStatementsOnASingleLine' : 'true',
                \ 'IndentCaseLabels' : 'false',
                \ 'TabWidth' : 4,
                \ }

    "\ 'UseTab' : 'Always',

    nnoremap cf :<C-u>ClangFormat<CR>
    vnoremap cf :ClangFormat<CR>

endif
