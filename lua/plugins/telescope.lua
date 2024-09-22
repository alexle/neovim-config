return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local builtin = require("telescope.builtin")
			local opts = { noremap = true, silent = true }

			vim.keymap.set("n", "<C-p>", builtin.find_files, opts)
			vim.keymap.set("n", "<C-g>", builtin.live_grep, opts)
			vim.keymap.set("n", "<leader>r", builtin.lsp_references, opts)
			vim.keymap.set("n", "<leader>d", builtin.lsp_definitions, opts)
			vim.keymap.set("n", "<leader>fb", builtin.buffers, opts)
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, opts)
			vim.keymap.set("n", "<leader>l", function()
				builtin.lsp_document_symbols({ symbols = { "function", "method" } })
			end, opts)

			local actions = require("telescope.actions")
			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							-- Add to escape once out of live_grep
							--["<esc>"] = actions.close,
							["<C-u>"] = false,
						},
					},
				},
				pickers = {
					buffers = {
						mappings = {
							i = {
								["fc"] = actions.delete_buffer + actions.move_to_top,
							},
						},
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
