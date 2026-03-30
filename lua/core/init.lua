require("core.options")
require("core.keymaps")
if vim.g.vscode then
	require("core.vscode-keymaps")
	vim.treesitter.stop()
end
