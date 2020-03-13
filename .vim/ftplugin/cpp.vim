set expandtab

"clang format setting---------------------
augroup clang_format
    autocmd!
    " autocmd FileType c,cpp ClangFormatAutoEnable
augroup END

nnoremap <C-f> :ClangFormat<CR>

let g:clang_format#code_style = "chromium"
let g:clang_format#style_options = {
            \ "ColumnLimit": 100,
            \ "AllowShortCaseLabelsOnASingleLine": "false",
            \ "AllowShortIfStatementsOnASingleLine": "Never",
            \ "AllowShortLambdasOnASingleLine": "Inline",
            \ "AlwaysBreakBeforeMultilineStrings": "false",
            \ "BraceWrapping": {
            \       "AfterControlStatement": "false",
            \       "AfterFunction": "true",
            \       "BeforeCatch": "true",
            \       "BeforeElse": "false",
            \ },
            \ "Standard": "Cpp11",
            \ "AccessModifierOffset": -4,
            \ "TabWidth": 4,
            \ "IndentWidth": 4,
            \ "UseTab": "Never",
            \ "AllowShortLoopsOnASingleLine": "true"}
"-----------------------------------------
