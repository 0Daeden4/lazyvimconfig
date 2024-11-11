return {
	{
		"folke/tokyonight.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{ "nvim-tree/nvim-web-devicons", lazy = true },
	{
    "williamboman/mason.nvim"
},
	{"nvim-telescope/telescope.nvim",
	tag = '0.1.8',
	dependencies = {
		"sharkdp/fd",
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
	},
},
}
