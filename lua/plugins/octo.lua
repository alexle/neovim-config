return {
	"pwntester/octo.nvim",
	requires = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("octo").setup({
			enable_builtin = true,
			suppress_missing_scope = {
				projects_v2 = true,
			},
		})
	end,
	keys = {
		{ "<leader>o", "<cmd>Octo<cr>", desc = "Octo" },
	},
}
