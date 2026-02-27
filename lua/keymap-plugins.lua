local map = vim.keymap.set
local opts = { noremap = true, silent = true }

if not vim.g.vscode then
	-- Auto-format on save (LSP)
	vim.api.nvim_create_autocmd("BufWritePre", {
		callback = function()
			vim.lsp.buf.format()
		end,
	})

	-- NeoTree
	map("n", "<C-n>", ":Neotree filesystem reveal left<CR>", opts)

	-- Manage floating windows
	map("n", "<esc>", function()
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			if vim.api.nvim_win_get_config(win).relative == "win" then
				vim.api.nvim_win_close(win, false)
			end
		end
	end)

	vim.api.nvim_set_keymap("t", "<C-t>", "<C-\\><C-n>:CFloatTerm<CR>", opts)
end
