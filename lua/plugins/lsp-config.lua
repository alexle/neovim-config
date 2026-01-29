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

			-- Simple servers with just capabilities
			local simple_servers = { "lua_ls", "bashls", "pylsp", "sqlls", "terraform_lsp", "terraformls", "html", "css_variables" }
			for _, server in ipairs(simple_servers) do
				vim.lsp.config[server] = { capabilities = capabilities }
				vim.lsp.enable(server)
			end

			-- gopls with custom settings
			vim.lsp.config.gopls = {
				cmd = { "gopls" },
				filetypes = { "go", "gomod", "gowork" },
				root_markers = { "go.mod", ".git" },
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
							generate = true,
							gc_details = true,
							tidy = true,
							upgrade_dependency = true,
						},
					},
				},
			}
			vim.lsp.enable("gopls")

			-- yamlls with schema settings
			vim.lsp.config.yamlls = {
				capabilities = capabilities,
				settings = {
					yaml = {
						schemas = {
							["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
						},
					},
				},
			}
			vim.lsp.enable("yamlls")
		end,
	},
}
