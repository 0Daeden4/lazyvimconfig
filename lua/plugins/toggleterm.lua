return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-t>]],
			direction = "horizontal", -- Options: 'vertical', 'horizontal', 'tab', 'float'
		})
	end,
}
