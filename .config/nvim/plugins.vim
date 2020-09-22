"vim-pulg---------------------------------
call plug#begin('~/.vim/plugged')

command! -nargs=* T vsplit | terminal <args>

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-lsp-icons'

Plug 'bfrg/vim-cpp-modern'
Plug 'rhysd/vim-clang-format'
Plug 'kana/vim-operator-user'

Plug 'tikhomirov/vim-glsl'

" file browser
"Plug 'scrooloose/nerdtree'
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'taiansu/nerdtree-ag'
"Plug 'rking/ag.vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

Plug 'rust-lang/rust.vim'
Plug 'mhinz/vim-crates'

Plug 'sagarrakshe/toggle-bool'
Plug 'itchyny/lightline.vim'
Plug 'will133/vim-dirdiff'
Plug 'thinca/vim-quickrun'
Plug 'mattn/vim-quickrunex'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'skywind3000/asyncrun.vim'
Plug 'segeljakt/vim-silicon'

Plug 'kristijanhusak/defx-icons'
Plug 'ryanoasis/vim-devicons'
Plug 'kristijanhusak/defx-git'

Plug 'vhdirk/vim-cmake'

if has('nvim')
    Plug 'Shougo/deorise.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/denite.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()

"-----------------------------------------
