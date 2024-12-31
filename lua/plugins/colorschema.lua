return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 10,
		config = function()
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
	{
		"cpea2506/one_monokai.nvim",
		name = "one_monokai",
		config = function()
			vim.cmd.colorscheme("one_monokai")
		end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		name = "cyberdream",
		config = function()
			vim.cmd.colorscheme("cyberdream")
		end,
	},
}
