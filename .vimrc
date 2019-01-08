set runtimepath^=$HOME/.vim
set directory^=$HOME/.vim/swapfiles//
 
call plug#begin('~/.vim/plugged')
    Plug 'vim-scripts/Zenburn'
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-surround'
    Plug 'w0rp/ale'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'vim-airline/vim-airline'
    Plug 'mattn/emmet-vim'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'pangloss/vim-javascript'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'mxw/vim-jsx'
call plug#end()
           
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h9:cANSI
  endif

    colorscheme gruvbox
    set background=dark
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
endif

if !has("gui_running")
    set term=xterm
    set t_Co=256
    let &t_AB="\e[48;5;%dm"
    let &t_AF="\e[38;5;%dm"
    colors zenburn
    let g:zenburn_high_Contrast=1
endif


" CtrlP Config
nnoremap <C-P> :CtrlP . <CR>  
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" NerdTree Config
let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1 
let NERDTreeDirArrows = 1
let NERDTreeMapActivateNode='<space>'

nnoremap <C-B> :NERDTreeToggle <CR>\

" ALE Config
nnoremap <F12> :ALEGoToDefinition <Enter>
let g:ale_completion_enabled = 1
let b:ale_fixers = ['eslint', 'prettier']
let g:ale_linters = {
\ 'cs': ['OmniSharp']
\}
let b:ale_fix_on_save = 1

" let g:OmniSharp_server_path = 'C:\OmniSharp\OmniSharp.exe'

"  My Keymaps
noremap <F8> :source $MYVIMRC <CR>
noremap <C-F8> :split $MYVIMRC <CR>

set backspace=indent,eol,start

set wrap

set clipboard=unnamedplus

syntax on

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
