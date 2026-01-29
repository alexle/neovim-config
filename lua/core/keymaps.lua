local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "

vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set cursorline")

-- Quick esc
map("i", "jj", "<Esc>", opts)

map("n", "<leader>w", ":wa<CR>", opts)
map("n", "<leader>q", ":qa<CR>", opts)
map("n", "<leader>wq", ":wqa<CR>", opts)

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- Copy inside double quotes
map("n", "<leader>;", 'yi"', opts)

-- Nav windows
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<leader>v", ":vsplit<CR>", opts)

-- Nav windows from terminal mode (for Claude Code, etc.)
map("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)
map("t", "<C-l>", "<C-\\><C-n><C-w>l", opts)

-- Nav tabs
map("n", "<Tab>", "gt", opts)
map("n", "<leader>x", ":close<CR>", opts)

-- Nav quick fix
map("n", "<C-b>", "<C-w>p", opts)

-- Nav previous window
map("n", "∑", "<C-o>", opts) -- <Alt-w>
