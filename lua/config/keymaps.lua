local map = vim.keymap.set
map("n", "Y", "VY", { noremap = true, silent = true, desc = "Yank whole line" })

-- telescope builtin maps
local telescope_b = require("telescope.builtin")
map("n", "<leader>pf", function()
	telescope_b.find_files()
end, { desc = "Telescope find file" })
map("n", "<leader>ps", function()
	telescope_b.live_grep()
end, { desc = "Telescope live grep" })
map("n", "<leader>qf", function()
	telescope_b.quickfix()
end, { desc = "Telescope quick fix list" })

-- oil maps
local oil = require("oil")
map("n", "<S-t>", function()
	oil.toggle_float()
end, { desc = "Toggle Oil" })

-- aerial keymaps
local aerial = require("aerial")
map("n", "<leader>a", function()
	aerial.toggle()
end, { desc = "Toggle Aerial" })

-- bufferline maps
map("n", "X", function()
	vim.cmd("bdelete")
end, { desc = "Delete current buffer" })
map("n", "H", function()
	vim.cmd("bprevious")
end, { desc = "Switch to previous buffer" })
map("n", "L", function()
	vim.cmd("bnext")
end, { desc = "Switch to next buffer" })

-- LSP keymaps
map("n", "<leader>rr", function()
	vim.lsp.buf.rename()
end, { desc = "LSP Rename" })
