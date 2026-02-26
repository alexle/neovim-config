return {
	{
		"catppuccin/nvim",
		cond = not vim.g.vscode,
		-- config = function()
		-- 	vim.cmd.colorscheme("catppuccin-macchiato")
		-- end,
	},
	{
		"cpea2506/one_monokai.nvim",
		cond = not vim.g.vscode,
		-- config = function()
		-- 	vim.cmd.colorscheme("one_monokai")
		-- end,
	},
	{
		"scottmckendry/cyberdream.nvim",
		cond = not vim.g.vscode,
		-- config = function()
		-- 	vim.cmd.colorscheme("cyberdream")
		-- end,
	},
	{
		"projekt0n/github-nvim-theme",
		cond = not vim.g.vscode,
		config = function()
			vim.cmd.colorscheme("github_dark_dimmed")
		end,
	},
	{
		"folke/tokyonight.nvim",
		cond = not vim.g.vscode,
	},
}
