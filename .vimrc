"general setting--------------------------
filetype plugin on
syntax on
colorscheme gruvbox
set background=dark
set laststatus=2
set diffopt=vertical
set fileformats=unix,dos,mac
set fileencodings=utf-8,sjis
set autoindent
set number
set shortmess+=I
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
    autocmd BufNewFile,BufRead *.cppm set ft=cpp
    autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
augroup END

augroup filetype_setting
    autocmd!
    autocmd BufRead,BufNewFile *.go setfiletype go
    autocmd BufRead,BufNewFile *.cpp,*.c++,*.c,*.h,*hpp setfiletype cpp
augroup END
"-----------------------------------------

"Utils setting----------------------------
augroup utils_setting
    autocmd BufWritePre * :%s/\s\+$//e
augroup END
"-----------------------------------------

"Neo complete-----------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#max_list = 50
let g:neocomplete#max_keyword_width = 80
let g:neocomplete#enable_ignore_case = 1
highlight Pmenu ctermbg=6
highlight PmenuSel ctermbg=3
highlight PMenuSbar ctermbg=0
inoremap <expr><CR>  pumvisible() ? neocomplete#close_popup() : "<CR>"
"-----------------------------------------

" Dein Scripts:
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.vim/dein')
  call dein#begin('$HOME/.vim/dein')

  " Required:
  call dein#add('$HOME/.vim/dein/repos/github.com/Shougo/dein.vim')

  " complement
  call dein#add('Shougo/neocomplete.vim')

  " c/c++
  call dein#add('bfrg/vim-cpp-modern')
  call dein#add('rhysd/vim-clang-format')
  call dein#add('kana/vim-operator-user')

  " glsl
  call dein#add('tikhomirov/vim-glsl')

  " go
  call dein#add('fatih/vim-go')

  " file browser
  call dein#add('scrooloose/nerdtree')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('jistr/vim-nerdtree-tabs')
  call dein#add('rking/ag.vim')
  call dein#add('taiansu/nerdtree-ag')

  " git
  call dein#add('airblade/vim-gitgutter')
  call dein#add('tpope/vim-fugitive')

  " other tools
  call dein#add('sagarrakshe/toggle-bool')
  call dein#add('itchyny/lightline.vim')
  call dein#add('will133/vim-dirdiff')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

"-----------------------------------------
