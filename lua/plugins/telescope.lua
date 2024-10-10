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

			-- files
			vim.keymap.set("n", "<leader> ", builtin.find_files, opts)
			-- grep
			vim.keymap.set("n", "<leader>f", builtin.live_grep, opts)
			-- references
			vim.keymap.set("n", "<leader>r", builtin.lsp_references, opts)
			-- definition
			vim.keymap.set("n", "<leader>d", builtin.lsp_definitions, opts)
			-- buffer
			vim.keymap.set("n", "<leader>,", builtin.buffers, opts)
			-- symbols
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
