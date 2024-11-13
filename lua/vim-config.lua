vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set cursorline")

-- Indentation settings
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- UI settings
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

-- Spell settings
vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- Leader key
vim.g.mapleader = " "

-- Key mappings
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

map("i", "jj", "<Esc>", opts)

map("n", "<leader>w", ":wa<CR>", opts)
map("n", "<leader>q", ":wq<CR>", opts)
map("n", "<leader>wq", ":wqa<CR>", opts)

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- Copy inside double quotes
map("n", "<leader>;", 'yi"', opts)

-- Nav windows
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<C-l>", "<C-w>l", opts)
map("n", "<leader>v", ":vsplit<CR>", opts)

-- Nav tabs
map("n", "<Tab>", "gt", opts)
map("n", "<leader>x", ":close<CR>", opts)

-- Nav quick fix
map("n", "<C-b>", "<C-w>p", opts)

-- None LS
map("n", "<leader>ff", vim.lsp.buf.format, {})

-- LSP config
map("n", "K", vim.lsp.buf.hover, {})
map("n", "gD", vim.lsp.buf.declaration, {})
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- LazyGit
map("n", "<leader>gg", ":LazyGit<CR>", opts)

-- GitSigns
map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", opts)
map("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", opts)

-- Telescope
map("n", "<leader> ", builtin.find_files, opts) -- space space
map("n", "ƒ", builtin.live_grep, opts) -- <Alt-f>
map("n", "®", builtin.lsp_references, opts) -- <Alt-r>
map("n", "∂", builtin.lsp_definitions, opts) -- <Alt-d>
map("n", "∑", "<C-o>", opts) -- <Alt-w>
map("n", "<leader>,", builtin.buffers, opts)
map("n", "<leader>l", function()
	builtin.lsp_document_symbols({ symbols = { "function", "method" } })
end, opts)

-- Diffview
map("n", "<leader>df", ":DiffviewOpen origin/main...HEAD<CR>", opts)
map("n", "<leader>dc", ":DiffviewClose<CR>", opts)

-- NeoTree
map("n", "<C-n>", ":Neotree filesystem reveal left<CR>", opts)

-- Go Nvim Test
map("n", "<leader>ut", ":GoTestPkg<CR>", opts)
map("n", "<leader>uf", ":GoTestFunc<CR>", opts)

-- Copilot Chat
map("n", "<leader><Tab>", ":CopilotChat ", opts)
map("v", "<leader><Tab>", ":CopilotChat<CR>", opts)
map("n", "ç", ":CopilotChatToggle<CR>", opts)
map({ "n", "v" }, "<leader>ce", ":CopilotChatExplain<CR>", opts)
map({ "n", "v" }, "<leader>cf", ":CopilotChatFix<CR>", opts)
map({ "n", "v" }, "<leader>co", ":CopilotChatOptimize<CR>", opts)

-- Noice
map("n", "<leader>nl", ":Noice last<CR>", opts)

-- Manage floating windows
map("n", "<esc>", function()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_get_config(win).relative == "win" then
			vim.api.nvim_win_close(win, false)
		end
	end
end)

vim.api.nvim_set_keymap("t", "<C-t>", "<C-\\><C-n>:CFloatTerm<CR>", opts)
