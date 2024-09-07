return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup()
      vim.keymap.set('n', "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set('n', "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end
  },
  {
    "tpope/vim-fugitive",
    config = function()
      local map = vim.keymap.set
      local opts = { noremap = true, silent = true }

      -- Git status
      map('n', "<leader>gst", ":Git status<CR>", opts)

      -- Git branches
      map('n', "<leader>gb", ":Git branch<CR>", opts)

      -- Git checkout (leave space for manual input)
      map('n', "<leader>gco", ":Git checkout ", { noremap = true })

      -- Git add all files
      map('n', "<leader>gaa", ":Git add --all<CR>", opts)

      -- Git commit with verbose and add all
      map('n', "<leader>gca", ":Git commit -v -a<CR>", opts)

      -- Git commit with message (requires manual input)
      map('n', "<leader>gcm", ":Git commit -v -a -m '", { noremap = true })
    end
  }
}