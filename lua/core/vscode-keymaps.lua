local vscode = require("vscode")
local map = vim.keymap.set

local function action(cmd)
	return function() vscode.action(cmd) end
end

-- File navigation
map("n", "<leader><space>", action("workbench.action.quickOpen"), { desc = "Find files" })
map("n", "<leader>,", action("workbench.action.showAllEditors"), { desc = "Buffers" })
map("n", "<leader>p", action("workbench.action.showCommands"), { desc = "Command palette" })

-- LSP
-- Note: Alt bindings (alt+d, alt+f, alt+g, alt+r, alt+c, alt+a) are in keybindings.json.
-- VSCode intercepts Alt keys before they reach neovim, so macOS chars (∂, ƒ, etc.) don't work here.
map("n", "<leader>d", action("editor.action.revealDefinition"), { desc = "Go to definition" })
map("n", "<leader>r", action("editor.action.goToReferences"), { desc = "References" })
map("n", "gI", action("editor.action.goToImplementation"), { desc = "Go to implementation" })
map("n", "gy", action("editor.action.goToTypeDefinition"), { desc = "Go to type definition" })
map("n", "<leader>l", action("workbench.action.gotoSymbol"), { desc = "Document symbols" })
map("n", "<leader>sg", action("workbench.action.findInFiles"), { desc = "Grep" })
map("n", "<leader>ff", action("editor.action.formatDocument"), { desc = "Format" })

-- Git
map("n", "<leader>gg", action("lazygit.openLazygit"), { desc = "Lazygit" })
map("n", "<leader>gm", action("gitlens.toggleLineBlame"), { desc = "Git blame" })
map("n", "<leader>gs", action("workbench.view.scm"), { desc = "Git status" })


-- Line movement (visual mode)
map("v", "J", action("editor.action.moveLinesDownAction"), { desc = "Move lines down" })
map("v", "K", action("editor.action.moveLinesUpAction"), { desc = "Move lines up" })

-- Editor navigation
map("n", "<leader>v", action("workbench.action.splitEditor"), { desc = "Split editor" })
map("n", "<S-Tab>", action("workbench.action.previousEditorInGroup"), { desc = "Prev editor in group" })

-- Copilot
map("n", "<leader>ce", action("github.copilot.chat.explain"), { desc = "Copilot explain" })

-- Snowflake
map("n", "<leader>k", action("snowflake.executeStatements"), { desc = "Snowflake execute" })
