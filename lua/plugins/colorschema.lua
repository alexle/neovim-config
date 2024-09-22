return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000, -- load before all other start plugins
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
	{
		"cpea2506/one_monokai.nvim",
		-- config = function()
		-- 	vim.cmd.colorscheme("one_monokai")
		-- end,
	},
}
