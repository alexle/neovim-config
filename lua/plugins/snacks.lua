return {
	{
		"folke/snacks.nvim",
		cond = not vim.g.vscode,
		priority = 1001,
		lazy = false,
		opts = {
			bigfile = { enabled = true },
			dashboard = { enabled = true },
			explorer = { enabled = true },
			git = { enabled = true },
			indent = { enabled = false },
			input = {
				enabled = true,
				icon_pos = "left",
				prompt_pos = "title",
				win = { style = "input" },
				expand = true,
			},
			lazygit = { enabled = true },
			picker = { enabled = true },
			notifier = { enabled = true, timeout = 3000 },
			notify = { enabled = true },
			quickfile = { enabled = true },
			scope = { enabled = true },
			scroll = { enabled = true },
			statuscolumn = { enabled = true },
			terminal = { enabled = true },
			words = {
				enabled = true,
				win = { style = "terminal" },
			},
		},
		keys = {
			---------- OTHER
			{ "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
			{ "å", function() Snacks.terminal() end, desc = "Toggle Terminal", mode = { "n", "t" } }, -- alt+a
			{ "]]", function() Snacks.words.jump(vim.v.count1) end, desc = "Next Reference", mode = { "n", "t" } },
			{ "[[", function() Snacks.words.jump(-vim.v.count1) end, desc = "Prev Reference", mode = { "n", "t" } },
			---------- GIT
			{ "<leader>gb", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
			{ "<leader>gl", function() Snacks.picker.git_log() end, desc = "Git Log" },
			{ "<leader>gL", function() Snacks.picker.git_log_line() end, desc = "Git Log Line" },
			{ "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
			{ "<leader>gS", function() Snacks.picker.git_stash() end, desc = "Git Stash" },
			{ "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff (Hunks)" },
			{ "<leader>gf", function() Snacks.picker.git_log_file() end, desc = "Git Log File" },
			{ "<leader>gm", function() Snacks.git.blame_line() end, desc = "Git Blame" },
			---------- PICKERS
			{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
			{ "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
			{ "ƒ", function() Snacks.picker.grep() end, desc = "Grep" }, -- alt+f
			{ "<leader>sg", function() Snacks.picker.grep() end, desc = "Grep" },
			---------- LSP
			{ "∂", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" }, -- alt+d
			{ "<leader>d", function() Snacks.picker.lsp_definitions() end, desc = "Goto Definition" },
			{ "gD", function() Snacks.picker.lsp_declarations() end, desc = "Goto Declaration" },
			{ "®", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" }, -- alt+r
			{ "<leader>r", function() Snacks.picker.lsp_references() end, nowait = true, desc = "References" },
			{ "≈", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" }, -- alt+x
			{ "gI", function() Snacks.picker.lsp_implementations() end, desc = "Goto Implementation" },
			{ "gy", function() Snacks.picker.lsp_type_definitions() end, desc = "Goto T[y]pe Definition" },
			{ "<leader>l", function() Snacks.picker.lsp_symbols() end, desc = "LSP Symbols" },
			{ "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
		},
	},
}
