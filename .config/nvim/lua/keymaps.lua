vim.g.mapleader = ' '

function map(mode, keymap, action)
    vim.api.nvim_set_keymap(mode, keymap, action, { noremap = true, silent = true })
end

map('n', '<Space>', '<NOP>')

map('n', '<Leader>h', ':set hlsearch!<CR>')

map('n', '<Leader>e', ':NvimTreeToggle<CR>')

map('n', '<C-h>', '<C-w>h')

map('n', '<C-j>', '<C-w>j')

map('n', '<C-k>', '<C-w>k')

map('n', '<C-l>', '<C-w>l')

map('v', '<', '<gv')
map('v', '>', '>gv')

map('n', '<TAB>', ':bnext<CR>')

map('n', '<S-TAB>', ':bprevious<CR>')

map('v', 'K', ':move \'<-2<CR>gv-gv\'')
map('v', 'J', ':move \'>+2<CR>gv-gv\'')

map('v', 'J', ':move \'>+2<CR>gv-gv\'')

map('i', '<expr><TAB>', [[pumvisible() ? "\<C-n>" : "\<TAB>"]])

map('n', '<C-Up>', ':resize -2<CR>')

map('n', '<C-Down>', ':resize +2<CR>')

map('n', '<C-Left>', ':vertical resize -2<CR>')

map('n', '<C-Right>', ':vertical resize +2<CR>')


map('n', '<Leader>ff', '<cmd>Telescope find_files<CR>')
map('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>')
map('n', '<Leader>fb', '<cmd>Telescope buffers<CR>')
map('n', '<Leader>fh', '<cmd>Telescope help_tags<CR>')
