return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			messages = {
				enabled = true,
				view = "notify",
				view_info = false,
				view_warn = "notify",
				view_error = "notify",
				view_history = "messages",
				view_search = "virtualtext",
				opts = {
					timeout = 3000,
				},
			},
			keymaps = {},
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
}
