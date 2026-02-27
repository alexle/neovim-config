return {
	"echasnovski/mini.surround",
	event = "VeryLazy",
	opts = {
		-- gs* prefix avoids timeout conflict with flash.nvim's "s"
		mappings = {
			add = "gsa",
			delete = "gsd",
			replace = "gsr",
			find = "gsf",
			find_left = "gsF",
			highlight = "gsh",
			update_n_lines = "gsn",
		},
	},
}
