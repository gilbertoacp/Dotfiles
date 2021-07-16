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

" appearance
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'mhinz/vim-startify'
Plug 'chriskempson/base16-vim'

call plug#end()
