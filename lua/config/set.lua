vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.undofile = true -- Enable persistent undo
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undofiles" -- Set the directory where undo files will be stored
vim.opt.undolevels = 10000

vim.opt.incsearch = true
vim.opt.hlsearch = false

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.colorcolumn = "150"

vim.g.mapleader = " "
