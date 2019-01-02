set runtimepath^=~/.vim

call plug#begin('~/.vim/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-surround'
    Plug 'w0rp/ale'
call plug#end()

let NERDTreeShowHidden=1
nnoremap <C-B> :NERDTreeToggle <Enter>

nnoremap <F12> :ALEGoToDefinition <Enter>
let g:ale_completion_enabled = 1
colorscheme gruvbox
set background=dark

set wrap

set clipboard=unnamedplus

syntax on
nnoremap <F5> :source $MYVIMRC <Enter>

set hlsearch
set ignorecase
set smartcase
set incsearch

set linebreak
set relativenumber

set title
set hidden

set smarttab
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set shiftround

set showmatch

set laststatus=2
set ruler
set encoding=utf-8
set cursorline

set showcmd
