return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
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
	{
		"projekt0n/github-nvim-theme",
		name = "github-theme",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme github_dark_default")
		end,
	},
}
