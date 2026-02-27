-- VSCode-only keymaps (loaded when vim.g.vscode is true).
-- Shared bindings live in keymaps.lua and apply to both contexts.
-- Alt bindings live in keybindings.json (VSCode intercepts alt before neovim).
local vscode = require("vscode")
local map = vim.keymap.set

local function action(cmd)
	return function() vscode.action(cmd) end
end

-- ── Terminal nvim equivalents ──────────────────────────────────
-- Mirror of snacks.lua / plugin keymaps. When adding a leader
-- binding in terminal nvim, add the VSCode version here.

-- Pickers (snacks.lua)
map("n", "<leader><space>", action("workbench.action.quickOpen"), { desc = "Find files" })
map("n", "<leader>,", action("workbench.action.showAllEditors"), { desc = "Buffers" })
map("n", "<leader>f", action("workbench.action.findInFiles"), { desc = "Grep" })

-- LSP (snacks.lua)
map("n", "<leader>d", action("editor.action.revealDefinition"), { desc = "Go to definition" })
map("n", "<leader>r", action("editor.action.goToReferences"), { desc = "References" })
map("n", "gI", action("editor.action.goToImplementation"), { desc = "Go to implementation" })
map("n", "gy", action("editor.action.goToTypeDefinition"), { desc = "Go to type definition" })
map("n", "<leader>l", action("workbench.action.gotoSymbol"), { desc = "Document symbols" })
map("n", "]d", action("editor.action.marker.nextInFiles"), { desc = "Next diagnostic" })
map("n", "[d", action("editor.action.marker.prevInFiles"), { desc = "Prev diagnostic" })

-- Git (snacks.lua)
map("n", "<leader>gg", action("lazygit.openLazygit"), { desc = "Lazygit" })
map("n", "<leader>gs", action("workbench.view.scm"), { desc = "Git status" })
map("n", "<leader>gl", action("git.viewHistory"), { desc = "Git Log" })
map("n", "<leader>gf", action("git.viewFileHistory"), { desc = "Git Log File" })
map("n", "<leader>gm", action("gitlens.toggleFileBlame"), { desc = "Git Blame" })

-- Copilot (copilot-cmp.lua)
map("n", "<leader>ce", action("github.copilot.chat.explain"), { desc = "Copilot explain" })

-- Line movement (visual mode)
map("v", "J", action("editor.action.moveLinesDownAction"), { desc = "Move lines down" })
map("v", "K", action("editor.action.moveLinesUpAction"), { desc = "Move lines up" })

-- Test (neotest.lua)
map("n", "<leader>ut", action("go.test.cursorOrPrevious"), { desc = "Test at Cursor" })

-- Diagnostics (trouble.nvim)
map("n", "<leader>xx", action("workbench.actions.view.problems"), { desc = "Diagnostics" })

-- ── VSCode-only (no terminal nvim equivalent) ──────────────────
map("n", "<leader>;", action("workbench.action.openRecent"), { desc = "Open recent" })
map("n", "<leader>p", action("workbench.action.showCommands"), { desc = "Command palette" })
map("n", "<leader>k", action("snowflake.executeStatements"), { desc = "Snowflake execute" })
