filetype plugin on
syntax on
colorscheme gruvbox
set background=dark
set laststatus=2
set diffopt=vertical
set fileformats=unix
set fileencodings=utf-8,sjis
set autoindent
set number
set shortmess+=I
set clipboard&
set clipboard^=unnamedplus
set termguicolors
set pumblend=10

set expandtab
set ts=4
set shiftwidth=4

nnoremap j gj
nnoremap k gk
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

augroup utils_setting
    autocmd BufWritePre * :%s/\s\+$//e
augroup END

au FileType qf nnoremap <silent><buffer>q :quit<CR>
augroup quickfix_commands
    autocmd!
    autocmd WinEnter * if winnr('$') == 1 && &buftype == "quickfix"|q|endif
    autocmd QuickFixCmdPost make,grep,grepadd.vimgrep copen
augroup END
