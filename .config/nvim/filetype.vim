augroup file_extension_setting
    autocmd!
    autocmd BufNewFile,BufRead *.cbl set ft=cpp
    autocmd BufNewFile,BufRead *.cppm set ft=cpp
    autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
augroup END

augroup filetype_setting
    autocmd!
    autocmd BufRead,BufNewFile *.go setfiletype go
    autocmd BufRead,BufNewFile *.cpp,*.c++,*.c,*.h,*.hpp,*.cbl setfiletype cpp
augroup END
