return {
	"folke/which-key.nvim",
	cond = not vim.g.vscode,
	event = "VeryLazy",
	opts = {
		spec = {
			{ "<leader>a", group = "AI/Claude" },
			{ "<leader>c", group = "Code/Copilot" },
			{ "<leader>g", group = "Git" },
			{ "<leader>s", group = "Search/Symbols" },
			{ "<leader>u", group = "Test" },
		},
	},
}
