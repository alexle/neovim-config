vim.cmd("set clipboard+=unnamedplus")

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.opt.number = true
vim.opt.title = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.scrolloff = 10
vim.opt.wrap = false
vim.opt_local.wrap = true
vim.opt.swapfile = false
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"

vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("i", "jj", "<Esc>", opts)

-- Save and quit
local function format_and_save()
	vim.lsp.buf.format()
	vim.cmd("wa")
end
local function format_and_close()
	vim.lsp.buf.format()
	vim.cmd("wq")
end
local function format_and_quit_all()
	vim.lsp.buf.format()
	vim.cmd("wqa")
end
vim.keymap.set("n", "<leader>w", format_and_save, opts)
vim.keymap.set("n", "<leader>q", format_and_close, opts)
vim.keymap.set("n", "<leader>wq", format_and_quit_all, opts)

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Nav windows
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "sv", ":vsplit<CR>", opts)

local function format_and_split_close()
	vim.lsp.buf.format()
	vim.cmd("close")
end
vim.keymap.set("n", "sc", format_and_split_close, opts)

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

-- Diffview
map("n", "<leader>df", ":DiffviewOpen<CR>", opts)
map("n", "<leader>dc", ":DiffviewClose<CR>", opts)

-- NeoTree
map("n", "<C-n>", ":Neotree filesystem reveal left<CR>", opts)

-- Fugitive
map("n", "<leader>gst", ":Git status<CR>", opts)
map("n", "<leader>gb", ":Git branch<CR>", opts)
map("n", "<leader>gco", ":Git checkout ", { noremap = true })
map("n", "<leader>gaa", ":Git add --all<CR>", opts)
map("n", "<leader>gca", ":Git commit -v -a<CR>", opts)
map("n", "<leader>gcm", ":Git commit -v -a -m '", { noremap = true })
