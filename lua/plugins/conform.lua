return {
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },

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

			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*",
				callback = function(args)
					require("conform").format({ bufnr = args.buf })
				end,
			})
		end,
	},
}
