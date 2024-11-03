return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			messages = {
				enabled = true,
				view = "notify",
				view_error = "notify",
				view_warn = "notify",
				view_history = "split",
				view_search = "virtualtext",
				opts = {
					timeout = 3000, -- Set the timeout to 5000 milliseconds (5 seconds)
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
