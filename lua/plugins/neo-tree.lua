return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
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
