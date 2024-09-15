vim.cmd("set expandtab")
vim.cmd("set shiftwidth=2")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set hlsearch")
vim.cmd("set incsearch")
vim.cmd("set ignorecase")
vim.cmd("set smartcase")
vim.cmd("set showmatch")
vim.cmd("set number")

vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "jj", "<Esc>", opts)

vim.keymap.set("n", "<leader>c", "<C-w>c", opts)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

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
map("n", "<leader>gg", ":LazyGit<CR>", opts)

-- GitSigns
map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
map("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", opts)

-- GitSigns
map("n", "<leader>gd", ":DiffviewOpen<CR>", opts)

-- NeoTree
map("n", "<C-n>", ":Neotree filesystem reveal left<CR>", opts)

-- Fugitive
map("n", "<leader>gst", ":Git status<CR>", opts)
map("n", "<leader>gb", ":Git branch<CR>", opts)
map("n", "<leader>gco", ":Git checkout ", { noremap = true })
map("n", "<leader>gaa", ":Git add --all<CR>", opts)
map("n", "<leader>gca", ":Git commit -v -a<CR>", opts)
map("n", "<leader>gcm", ":Git commit -v -a -m '", { noremap = true })
