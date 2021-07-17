call plug#begin('~/.vim/plugged')

" syntax
Plug 'jiangmiao/auto-pairs'
Plug 'stanangeloff/php.vim'
Plug 'neoclide/coc.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'

" utils
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'weirongxu/coc-explorer'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'

" appearance
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'mhinz/vim-startify'

Plug 'ryanoasis/vim-devicons'

if has('nvim')
  Plug 'romgrk/barbar.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
endif

call plug#end()
