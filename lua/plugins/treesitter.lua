return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_instal = true,
      ensure_installed = {
        "bash",
        "css",
        "dockerfile",
        "go",
        "http",
        "javascript",
        "json",
        "jq",
        "lua",
        "markdown",
        "sql",
        "terraform",
        "vim",
        "yaml",
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
