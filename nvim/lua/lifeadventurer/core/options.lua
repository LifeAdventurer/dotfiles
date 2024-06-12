local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = true
opt.linebreak = true -- wrap on word boundary

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.background = "dark"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true
