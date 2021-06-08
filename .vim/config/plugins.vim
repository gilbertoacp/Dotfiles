call plug#begin('~/.vim/plugged')

" syntax
Plug 'jiangmiao/auto-pairs'
Plug 'stanangeloff/php.vim'
Plug 'neoclide/coc.nvim'

" utils
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'neoclide/coc.nvim'
Plug 'tpope/vim-commentary'

"appearance
Plug 'sainnhe/edge'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
