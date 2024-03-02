vim.opt.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.isfname:append('@-@')

vim.opt.updatetime = 50

vim.opt.showmode = false
vim.opt.showcmd = false

vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.signcolumn = 'no'

vim.opt.cmdheight = 1

vim.g.c_syntax_for_h = true

vim.g.netrw_banner = false

vim.filetype.add({
    extension = {
        ken = 'ken',
        i = 'c',
        mips = 'mips',
        ll = 'llvm',
    }
})

vim.g.copilot_no_tab_map = true
