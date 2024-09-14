vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set clipboard+=unnamedplus")

vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "jj", "<Esc>", opts)
map("n", "<leader>q", ":wqa<CR>", opts)

-- Custom
local function save_and_format()
	vim.cmd("wa")
	vim.lsp.buf.format()
end
  vim.keymap.set("n", "<leader>w", save_and_format, opts)

-- None LS
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format, {})

-- LSP config
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- LazyGit
map("n", "<leader>lg", ":LazyGit<CR>", opts)

-- GitSigns
map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
map("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", opts)

-- NeoTree
map("n", "<C-n>", ":Neotree filesystem reveal left<CR>", opts)

-- Fugitive
map("n", "<leader>gst", ":Git status<CR>", opts)
map("n", "<leader>gb", ":Git branch<CR>", opts)
map("n", "<leader>gco", ":Git checkout ", { noremap = true })
map("n", "<leader>gaa", ":Git add --all<CR>", opts)
map("n", "<leader>gca", ":Git commit -v -a<CR>", opts)
map("n", "<leader>gcm", ":Git commit -v -a -m '", { noremap = true })
