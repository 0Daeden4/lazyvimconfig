require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "clangd", "pyright", "lua_ls", "asm_lsp", "bashls", "vimls" },
	automatic_installation = true,
})
-- Import lspconfig
local lspconfig = require("lspconfig")

-- Set up capabilities for nvim-cmp integration
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Automatically set up each LSP server installed via mason-lspconfig
require("mason-lspconfig").setup_handlers({
	-- Default handler for all installed servers
	function(server_name)
		lspconfig[server_name].setup({
			capabilities = capabilities,
			-- You can add more default configurations here if desired
		})
	end,

	-- Custom configurations for specific servers
	["lua_ls"] = function()
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
			settings = {
				Lua = {
					diagnostics = { globals = { "vim" } },
				},
			},
		})
	end,

	-- Add other specific handlers here if you have specific configurations for other servers
})
