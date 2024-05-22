return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewfile" },
  build = ":TSUpdate",
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      ensure_installed = {
        "json",
        "javascript",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "regex",
        "query",
        "toml",
        "lua",
        "vim",
        "c",
        "cpp",
        "python",
        "rust",
        "go",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        }
      },
    })
  end,
}
