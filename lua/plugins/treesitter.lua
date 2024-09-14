return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_instal = true,
			ensure_installed = { "lua" },
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
