vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set clipboard+=unnamedplus")

vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "jj", "<Esc>", opts)
map("n", "<leader>w", ":wa<CR>", opts)
map("n", "<leader>q", ":wqa<CR>", opts)

-- LazyGit
map("n", "<leader>lg", ":LazyGit<CR>", opts)

-- GitSigns
map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
map("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", opts)

-- NeoTree
map('n', '<C-n>', ':Neotree filesystem reveal left<CR>', opts)
