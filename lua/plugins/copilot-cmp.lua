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
		branch = "canary",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- Or github/copilot.vim
			{ "nvim-lua/plenary.nvim" },
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			debug = false,
			auto_insert_mode = false, -- Automatically insert the suggestion in insert mode
			highlight_selection = false, -- Highlight suggestion in the source buffer when in the chat win
			window = {
				width = 0.3, -- Fraction of the parent's screen width
			},
		},
		-- See Commands section for default commands if you want to lazy load on them
	},
}
