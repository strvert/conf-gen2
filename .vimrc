set number

syntax on
colorscheme candid

set nocompatible
set laststatus=2
set laststatus
set showmode
set showcmd
set ruler
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let NERDTreeShowHidden=1

nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap s= <C-w>=
nnoremap sr <C-w>r
nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sd :q<CR>
nnoremap sD :q!<CR>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ishikawa/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ishikawa/.vim/dein')
  call dein#begin('/home/ishikawa/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/ishikawa/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')
  call dein#add('itchyny/lightline.vim')
  call dein#add('scrooloose/nerdtree')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
