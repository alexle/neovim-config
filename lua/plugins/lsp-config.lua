return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.bashls.setup({ capabilities = capabilities })
			lspconfig.pylsp.setup({ capabilities = capabilities })
			lspconfig.sqlls.setup({ capabilities = capabilities })
			lspconfig.terraform_lsp.setup({ capabilities = capabilities })
			lspconfig.terraformls.setup({ capabilities = capabilities })
			lspconfig.html.setup({ capabilities = capabilities })
			lspconfig.css_variables.setup({ capabilities = capabilities })

			lspconfig.gopls.setup({
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork" },
				root_dir = require("lspconfig.util").root_pattern("go.mod", ".git"),
				capabilities = capabilities,
				settings = {
					gopls = {
						analyses = {
							unusedparams = true,
							nilness = true,
							shadow = true,
							unusedwrite = true,
							fieldalignment = true,
						},
						staticcheck = true,
						codelenses = {
							generate = true, -- Enable code lens to run `go generate`
							gc_details = true, -- Show detailed heap diagnostics
							tidy = true, -- Run `go mod tidy`
							upgrade_dependency = true, -- Code lens to upgrade dependencies
						},
					},
				},
			})

			lspconfig.yamlls.setup({
				capabilities = capabilities,
				settings = {
					yaml = {
						schemas = {
							["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
						},
					},
				},
			})
		end,
	},
}
