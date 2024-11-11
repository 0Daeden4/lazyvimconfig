local map = vim.keymap.set
map("n", "Y", "VY", { noremap = true, silent = true })

-- neotree maps
local neotree = require("neo-tree.command")
map("n", "<S-t>", function()
	neotree.execute({ toggle = true })
end, { desc = "Toggle neotree" })
