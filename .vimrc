set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set noerrorbells
set tabstop=2 softtabstop=2
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set undodir=~/.vim/undodir
set undofile 
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

" themes
Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree'

Plug 'christoomey/vim-tmux-navigator'
call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"
let NERDTreeQuitOnOpen=1

let mapleader=" "

nmap <Leader>nt	:NERDTreeFind<CR>
