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

vim.keymap.set("n", "<leader>w", ":wa<CR>", opts)
vim.keymap.set("n", "<leader>q", "wq<CR>", opts)
vim.keymap.set("n", "<leader>wq", ":wqa<CR>", opts)

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Nav windows
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "sv", ":vsplit<CR>", opts)
vim.keymap.set("n", "sc", ":close<CR>", opts)

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

-- Manage floating windows
vim.keymap.set("n", "<esc>", function()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_get_config(win).relative == "win" then
			vim.api.nvim_win_close(win, false)
		end
	end
end)

vim.api.nvim_set_keymap("t", "<C-t>", "<C-\\><C-n>:CFloatTerm<CR>", { noremap = true, silent = true })
