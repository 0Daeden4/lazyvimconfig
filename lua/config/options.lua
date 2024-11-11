local opt = vim.opt

-- Enable line numbers
opt.number = true
opt.relativenumber = true

-- Set tab preferences
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.softtabstop = 2

-- Other general settings...

opt.smartindent = true

opt.wrap = false

opt.undofile = true -- Enable persistent undo
opt.undodir = os.getenv("HOME") .. "/.config/nvim/undofiles" -- Set the directory where undo files will be stored
opt.undolevels = 10000

opt.incsearch = true
opt.hlsearch = false

opt.termguicolors = true

opt.scrolloff = 8

opt.updatetime = 50

opt.colorcolumn = "150"
