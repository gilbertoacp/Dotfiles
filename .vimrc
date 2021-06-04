set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set tabstop=2
set cursorline

let &t_ut=''

call plug#begin('~/.vim/plugged')

" syntax
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'lnl7/vim-nix'
Plug 'stanangeloff/php.vim'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim'

" utils
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim'

"appearance
Plug 'sainnhe/edge'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" appearance
if (has("termguicolors"))
  set termguicolors
endif

let g:onedark_terminal_italics = 1
let g:onedark_termcolors = 256
let g:onedark_hide_endofbuffer = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='onedark'

colorscheme onedark

" utils
let mapleader=" "
set showtabline=2
nnoremap <leader>nt :NERDTreeFocus<CR>
let NERDTreeShowHidden=1

" syntax 
set conceallevel=1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
