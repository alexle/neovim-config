return {
	{
		"zbirenbaum/copilot-cmp",
		event = "InsertEnter",
		config = function()
			require("copilot_cmp").setup()
		end,
		dependencies = {
			"zbirenbaum/copilot.lua",
			cmd = "Copilot",
			config = function()
				require("copilot").setup({
					suggestion = { enabled = false },
					panel = { enabled = false },
				})
			end,
		},
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "main",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- Or github/copilot.vim
			{ "nvim-lua/plenary.nvim" },
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		keys = {
			{ "<leader><Tab>", ":CopilotChat ", mode = "n", desc = "Copilot Chat" },
			{ "<leader><Tab>", "<cmd>CopilotChat<cr>", mode = "v", desc = "Copilot Chat" },
			{ "ç", "<cmd>CopilotChatToggle<cr>", desc = "Toggle Copilot Chat" },
			{ "<leader>ce", "<cmd>CopilotChatExplain<cr>", mode = { "n", "v" }, desc = "Explain" },
			{ "<leader>cf", "<cmd>CopilotChatFix<cr>", mode = { "n", "v" }, desc = "Fix" },
			{ "<leader>co", "<cmd>CopilotChatOptimize<cr>", mode = { "n", "v" }, desc = "Optimize" },
		},
		opts = {
			debug = false,
			auto_insert_mode = false,
			highlight_selection = true,
			window = {
				width = 0.3, -- Fraction of the parent's screen width
			},
		},
	},
}
