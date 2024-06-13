return {
  "iamcco/markdown-preview.nvim",
  build = function() vim.fn["mkdp#util#install"]() end,
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  keys = {
    {
      "<leader>mdp",
      ft = "markdown",
      "<cmd>MarkdownPreviewToggle<cr>",
      desc = "Markdown Preview Toggle",
    },
  },
  config = function()
    vim.g.mkdp_auto_start = 0
    vim.g.mkdp_auto_close = 1
    vim.g.mkdp_open_ip = '127.0.0.1'
    vim.g.mkdp_browser = ''
    vim.g.mkdp_echo_preview_url = 0
    vim.g.mkdp_port = 8080
    vim.g.mkdp_page_title = '${name}'
  end,
}
