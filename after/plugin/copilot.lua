vim.keymap.set('i', '<M-y>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false
})
vim.keymap.set('i', '<M-l>', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<M-j>', '<Plug>(copilot-accept-line)')
vim.keymap.set('i', '<M-n>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<M-p>', '<Plug>(copilot-previous)')
vim.keymap.set('i', '<M-e>', '<Plug>(copilot-dismiss)')
