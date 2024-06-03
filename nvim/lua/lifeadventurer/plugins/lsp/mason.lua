return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "clangd",
        "cmake",
        "cssls",
        "dockerls",
        "gopls",
        "html",
        "jsonls",
        "lua_ls",
        "marksman",
        "pyright",
        "rust_analyzer",
        "taplo",
        "texlab",
        "tsserver",
        "yamlls",
      },
    })
  end,
}
