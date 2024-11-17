-- disable spell check for any file
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt_local.spell = false
	end,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	--pattern = "*.c",
	-- since cmp is conflicting
	callback = function()
		vim.opt_local.expandtab = true
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end,
})
