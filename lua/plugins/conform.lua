return {
	{
		"stevearc/conform.nvim",
		cond = not vim.g.vscode,
		event = { "BufReadPre", "BufNewFile" },
		keys = {
			{ "<leader>o", function() require("conform").format({ async = true }) end, desc = "Format buffer" },
		},

		config = function()
			local conform = require("conform")

			conform.setup({
				formatters_by_ft = {
					lua = { "stylua" },
					go = { "gofmt", "goimports", "gci" },
					python = { "isort", "black" },
					javascript = { "prettierd", "prettier", stop_after_first = true },
					terraform = { "terraform_fmt" },
					bash = { "shfmt" },
					yaml = { "yamlfix" },
					html = { "htmlbeautifier" },
				},
				format_on_save = {
					timeout_ms = 500,
					lsp_format = "fallback",
				},
			})
		end,
	},
}
