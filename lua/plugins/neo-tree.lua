return {
	"nvim-neo-tree/neo-tree.nvim",
	cond = not vim.g.vscode,
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	keys = {
		{ "<C-n>", ":Neotree filesystem reveal left<CR>", silent = true },
	},
	config = function()
		local neo_tree = require("neo-tree")
		neo_tree.setup({
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_by_pattern = {
						".git",
						".gitignore",
					},
				},
			},
		})
	end,
}
