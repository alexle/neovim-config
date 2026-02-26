local vscode = require("vscode")
local map = vim.keymap.set

local function action(cmd)
	return function() vscode.action(cmd) end
end

-- File navigation
map("n", "<leader><space>", action("workbench.action.quickOpen"), { desc = "Find files" })
map("n", "<leader>,", action("workbench.action.showAllEditors"), { desc = "Buffers" })
map("n", "<C-n>", action("workbench.action.toggleSidebarVisibility"), { desc = "Toggle sidebar" })
map("n", "<leader>e", action("workbench.action.toggleSidebarVisibility"), { desc = "Toggle sidebar" })
map("n", "<leader>p", action("workbench.action.showCommands"), { desc = "Command palette" })

-- Search
map("n", "ƒ", action("workbench.action.findInFiles"), { desc = "Grep" }) -- Alt-F

-- LSP
map("n", "∂", action("editor.action.revealDefinition"), { desc = "Go to definition" }) -- Alt-D
map("n", "gd", action("editor.action.revealDefinition"), { desc = "Go to definition" })
map("n", "gD", action("editor.action.revealDeclaration"), { desc = "Go to declaration" })
map("n", "®", action("editor.action.goToReferences"), { desc = "References" }) -- Alt-R
map("n", "gr", action("editor.action.goToReferences"), { desc = "References" })
map("n", "gI", action("editor.action.goToImplementation"), { desc = "Go to implementation" })
map("n", "gy", action("editor.action.goToTypeDefinition"), { desc = "Go to type definition" })
map("n", "<leader>l", action("workbench.action.gotoSymbol"), { desc = "Document symbols" })
map("n", "<leader>sS", action("workbench.action.showAllSymbols"), { desc = "Workspace symbols" })
map("n", "<leader>ff", action("editor.action.formatDocument"), { desc = "Format" })
map("n", "<leader>ca", action("editor.action.quickFix"), { desc = "Code actions" })
map("n", "<leader>cr", action("editor.action.rename"), { desc = "Rename symbol" })

-- Git
map("n", "<leader>gg", action("workbench.action.terminal.newWithProfile"), { desc = "New terminal profile" })
map("n", "<leader>gm", action("gitlens.toggleLineBlame"), { desc = "Git blame" })

-- Terminal
map("n", "å", action("workbench.action.terminal.toggleTerminal"), { desc = "Toggle terminal" }) -- Alt-A

-- Source control
map("n", "<leader>gs", action("workbench.view.scm"), { desc = "Source control" })

-- Line movement (visual mode)
map("v", "J", action("editor.action.moveLinesDownAction"), { desc = "Move lines down" })
map("v", "K", action("editor.action.moveLinesUpAction"), { desc = "Move lines up" })

-- Go testing (via VSCode Go extension)
map("n", "<leader>uf", action("go.test.cursor"), { desc = "Test function" })
map("n", "<leader>ut", action("go.test.package"), { desc = "Test package" })
