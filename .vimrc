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
set relativenumber
set laststatus=2
set tabstop=2

call plug#begin('~/.vim/plugged')

" syntax
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'lnl7/vim-nix'

" appearance
Plug 'sainnhe/edge'

call plug#end()

if (has("termguicolors"))
	set termguicolors
endif

let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1
colorscheme edge

let &t_ut=''
let mapleader=" "
set showtabline=2

" syntax 
set conceallevel=1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
