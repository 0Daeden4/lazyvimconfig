local lspconfig = require("lspconfig")
lspconfig.gdscript.setup({})
local pipepath = vim.fn.stdpath("cache") .. "/server.pipe"
--print(pipepath)
if not vim.loop.fs_stat(pipepath) then
	vim.fn.serverstart(pipepath)
end
