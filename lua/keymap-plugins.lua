local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

-- None LS
map("n", "<leader>ff", vim.lsp.buf.format, {})

-- LSP config
map("n", "K", vim.lsp.buf.hover, {})
map("n", "gD", vim.lsp.buf.declaration, {})
map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

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

-- Manage floating windows
map("n", "<esc>", function()
	for _, win in ipairs(vim.api.nvim_list_wins()) do
		if vim.api.nvim_win_get_config(win).relative == "win" then
			vim.api.nvim_win_close(win, false)
		end
	end
end)

vim.api.nvim_set_keymap("t", "<C-t>", "<C-\\><C-n>:CFloatTerm<CR>", opts)
