-- Map Leader
vim.g.mapleader = ' '

-- Normal Mode
_G.map('n', '<Space>', '<NOP>')
_G.map('n', '<Leader>h', ':set hlsearch!<CR>')
_G.map('n', '<C-h>', '<C-w>h')
_G.map('n', '<C-j>', '<C-w>j')
_G.map('n', '<C-k>', '<C-w>k')
_G.map('n', '<C-l>', '<C-w>l')
_G.map('n', '<C-Up>', ':resize -2<CR>')
_G.map('n', '<C-Down>', ':resize +2<CR>')
_G.map('n', '<C-Left>', ':vertical resize -2<CR>')
_G.map('n', '<C-Right>', ':vertical resize +2<CR>')
_G.map('n', '<TAB>', ':bnext<CR>')
_G.map('n', '<S-TAB>', ':bprevious<CR>')

-- Visual Mode
_G.map('v', '<', '<gv')
_G.map('v', '>', '>gv')
_G.map('v', 'K', ':move \'<-2<CR>gv-gv\'')
_G.map('v', 'J', ':move \'>+2<CR>gv-gv\'')
_G.map('v', 'J', ':move \'>+2<CR>gv-gv\'')

-- Insert Mode
_G.map('i', '<expr><TAB>', [[pumvisible() ? "\<C-n>" : "\<TAB>"]])
