local map = vim.keymap.set
map("n", "Y", "VY", { noremap = true, silent = true })
map("n", "<S-t>", ":Neotree toggle <CR>")
