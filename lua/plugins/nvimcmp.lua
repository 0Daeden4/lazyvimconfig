return {
	"hrsh7th/nvim-cmp",
	event = { "InsertEnter", "CmdlineEnter" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},
	config = function()
		local cmp = require("cmp")
		local luasnip = require("luasnip")

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = {
				["<Tab>"] = cmp.mapping(function(fallback)
					local col = vim.fn.col(".") - 1
					if cmp.visible() then
						if #cmp.get_entries() == 1 then
							cmp.confirm({ select = true })
						else
							cmp.select_next_item()
						end
					elseif col > 0 and not vim.fn.getline("."):sub(col, col):match("%s") then
						-- Trigger completion only if cursor is not at a whitespace or start of line
						cmp.complete()
					else
						fallback()
						--else
						--    cmp.complete()
						--    if #cmp.get_entries() == 1 then
						--        cmp.confirm({ select = true })
						--    end
					end
				end, { "i", "s" }), -- Applies in insert, select, and command modes
			},
			sources = {
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
			},
		})
	end,
}
