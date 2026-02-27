-- Keymaps that depend on plugins but don't belong in a specific plugin's config.
-- Prefer putting plugin-specific keymaps in the plugin's keys={} or config block.
local map = vim.keymap.set
local opts = { noremap = true, silent = true }

if not vim.g.vscode then
	-- Manage floating windows
	map("n", "<esc>", function()
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			if vim.api.nvim_win_get_config(win).relative == "win" then
				vim.api.nvim_win_close(win, false)
			end
		end
	end)
end
