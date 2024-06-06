return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        css = { "prettier" },
        javascript = { "prettier" },
        lua = { "stylua" },
        python = { "black", "isort" },
      },
      formatters = {
        injected = {
          options = {
            ignore_errors = true,
          },
        },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        quiet = false,
        timeout_ms = 2000,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        quiet = false,
        timeout_ms = 2000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
