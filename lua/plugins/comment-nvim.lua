return {
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
		opts = {},

		-- NORMAL MODE
		--  `gcc` - Toggles the current line using linewise comment
		-- `gbc` - Toggles the current line using blockwise comment
		-- `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
		-- `[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
		--
		-- VISUAL MODE
		-- `gc` - Toggles the region using linewise comment
		-- `gb` - Toggles the region using blockwise comment
	},
}
