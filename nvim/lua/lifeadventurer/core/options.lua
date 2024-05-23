vim.cmd("set shell=powershell")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.background = "dark"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true
