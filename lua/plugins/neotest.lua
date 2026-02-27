return {
	"fredrikaverpil/neotest-golang",
	cond = not vim.g.vscode,
	ft = "go",
	dependencies = {
		"nvim-neotest/neotest",
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-golang")({}),
			},
		})
	end,
	keys = {
		{ "<leader>ut", function() require("neotest").run.run() end, desc = "Test at Cursor" },
		{ "<leader>uf", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "Test File" },
		{ "<leader>us", function() require("neotest").summary.toggle() end, desc = "Test Summary" },
		{ "<leader>uo", function() require("neotest").output_panel.toggle() end, desc = "Test Output" },
	},
}
