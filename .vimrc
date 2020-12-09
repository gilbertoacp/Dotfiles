set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set tabstop=2

call plug#begin('~/.vim/plugged')
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/emmet-vim'
Plug 'luochen1990/rainbow'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'stanangeloff/php.vim'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
call plug#end()

" color scheme
"colorscheme onedark
colorscheme nord

" mapleader
let mapleader=" "

" Always show tabs
set showtabline=2

" nerdtree
let NERDTreeQuitOnOpen=1
nmap <Leader>nt :NERDTreeToggle<CR>

" easymotion
nmap <Leader>s <Plug>(easymotion-s2)

" rainbow indent
let g:rainbow_active = 1
let g:indent_guides_enable_on_vim_startup = 1

" javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"let g:airline_theme = 'cool'
