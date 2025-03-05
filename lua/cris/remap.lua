-- most of these were taken from ThePrimeagen

vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.keymap.set('n', 'J', [[mzJ`z]])
vim.keymap.set('n', '<C-d>', [[<C-d>zz]])
vim.keymap.set('n', '<C-u>', [[<C-u>zz]])
vim.keymap.set('t', '<ESC>', [[<C-\><C-n>]])
vim.keymap.set('n', '<leader>t', [[<cmd>split | term<CR>]])

vim.keymap.set('n', 'n', [[nzzzv]])
vim.keymap.set('n', 'N', [[Nzzzv]])

vim.keymap.set('v', 'J', [[:m '>+1<CR>gv=gv]])
vim.keymap.set('v', 'K', [[:m '<-2<CR>gv=gv]])

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<leader><leader>', vim.cmd.so)

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [['_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
vim.keymap.set('n', '<leader>v', [["+p]])

vim.keymap.set('n', '<leader>cd', [[:Copilot disable<CR>]])
vim.keymap.set('n', '<leader>ce', [[:Copilot enable<CR>]])

vim.keymap.set('n', '<leader>a', [[ggVG]])

-- copy whole file to clipboard
vim.keymap.set('n', '<leader>ca', [[ggVG"+y]])


vim.cmd([[autocmd BufWritePre * lua vim.lsp.buf.format()]])
vim.cmd([[autocmd FileType * set formatoptions-=ro]])
