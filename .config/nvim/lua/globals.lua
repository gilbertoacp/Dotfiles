_G['map'] = function (mode, keymap, action)
    vim.api.nvim_set_keymap(mode, keymap, action, { noremap = true, silent = true })
end