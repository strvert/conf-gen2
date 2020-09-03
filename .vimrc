"general setting--------------------------
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
"-----------------------------------------

"common setting---------------------------
set expandtab
set ts=4
set shiftwidth=4
"-----------------------------------------

"general keymaps--------------------------
nnoremap j gj
nnoremap k gk
"-----------------------------------------

"togglebool setting-----------------------
noremap <C-b> :ToggleBool<CR>
"-----------------------------------------

"nerdtree setting-------------------------
let g:NERDTreeWinSize = 25
let NERDTreeShowHidden = 1
nnoremap <C-n> :NERDTreeTabsToggle<CR>

"augroup nerdtree_setting
"    autocmd!
"    autocmd vimenter * if !argc() | NERDTree | endif
"    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"augroup END
"-----------------------------------------

"filetype setting-------------------------
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
"-----------------------------------------

"Utils setting----------------------------
augroup utils_setting
    autocmd BufWritePre * :%s/\s\+$//e
augroup END
"-----------------------------------------

"Vim LSP ---------------------------------
"if empty(globpath(&rtp, 'autoload/lsp.vim'))
"  finish
"endif

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  nmap <buffer> gd <plug>(lsp-definition)
  nmap <buffer> <f2> <plug>(lsp-rename)
  inoremap <expr> <cr> pumvisible() ? "\<c-y>\<cr>" : "\<cr>"
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
command! LspDebug let lsp_log_verbose=1 | let lsp_log_file = expand('~/lsp.log')

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 1
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 1
"-----------------------------------------

"QuickRun---------------------------------
let g:quickrun_config = {
\   "cpp/g++" : {
\       "cmdopt" : "-std=c++20",
\       "hook/time/enable" : 1
\   },
\   "_" : {
\       "outputter/buffer/split" : ":botright 8sp",
\       "outputter/buffer/close_on_empty" : 1,
\       "outputter" : "quickfix",
\       "hook/time/enable" : 1
\   },
\}
"-----------------------------------------

call plug#begin('~/.vim/plugged')

" complement
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'

" c/c++
Plug 'bfrg/vim-cpp-modern'
Plug 'rhysd/vim-clang-format'
Plug 'kana/vim-operator-user'

" glsl
Plug 'tikhomirov/vim-glsl'

" go
Plug 'fatih/vim-go'

" file browser
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'rking/ag.vim'
Plug 'taiansu/nerdtree-ag'

" git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" other tools
Plug 'sagarrakshe/toggle-bool'
Plug 'itchyny/lightline.vim'
Plug 'will133/vim-dirdiff'
Plug 'thinca/vim-quickrun'
Plug 'mattn/vim-quickrunex'
Plug 'skanehira/code2img.vim'

call plug#end()

"-----------------------------------------
