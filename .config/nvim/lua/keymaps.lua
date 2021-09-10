-- function map(mode, keymap, action)
--     vim.api.nvim_set_keymap(mode, keymap, action { noremap = true, silent = true })
-- end

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', {
    noremap = true,
    silent  = true
})
vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { 
    noremap = true,
    silent  = true
})

vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { 
    noremap = true,
    silent  = true
})
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { 
    silent  = true
})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { 
    silent  = true
})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { 
    silent  = true
})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { 
    silent  = true
})

vim.api.nvim_set_keymap('v', '<', '<gv', { 
    noremap = true,
    silent  = true
})
vim.api.nvim_set_keymap('v', '>', '>gv', { 
    noremap = true,
    silent  = true
})

vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { 
    noremap = true,
    silent  = true
})

vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', { 
    noremap = true,
    silent  = true
})


vim.api.nvim_set_keymap('v', 'K', ':move \'<-2<CR>gv-gv\'', { 
    noremap = true,
    silent  = true
})
vim.api.nvim_set_keymap('v', 'J', ':move \'>+2<CR>gv-gv\'', { 
    noremap = true,
    silent  = true
})


vim.api.nvim_set_keymap('v', 'J', ':move \'>+2<CR>gv-gv\'', { 
    noremap = true,
    silent  = true
})

vim.api.nvim_set_keymap('i', '<expr><TAB>', [[pumvisible() ? "\<C-n>" : "\<TAB>"]], { 
    noremap = true,
    silent  = true
})


vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', { 
    noremap = true,
    silent  = true
})


vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', { 
    noremap = true,
    silent  = true
})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', { 
    noremap = true,
    silent  = true
})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', { 
    noremap = true,
    silent  = true
})
