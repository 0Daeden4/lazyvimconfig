-- disable spell check for any file
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt_local.spell = false
	end,
})
