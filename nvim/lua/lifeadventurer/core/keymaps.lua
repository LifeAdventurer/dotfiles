vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
vim.keymap.set("t", "<C-n>", "<C-\\><C-n>") -- Exit terminal mode

vim.keymap.set("n", "<C-s>", "<cmd>w<CR>") -- Saves current file
vim.keymap.set("i", "<C-s>", "<ESC><cmd>w<CR>") -- Saves current file

vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split window" })

vim.keymap.set("n", "<C-Up>", "<C-w>+") -- Increase window height by 1
vim.keymap.set("n", "<C-Down>", "<C-w>-") -- Decrease window height by 1
vim.keymap.set("n", "<C-Left>", "<C-w><") -- Increase window width by 1
vim.keymap.set("n", "<C-Right>", "<C-w>>") -- Decrease window width by 1

-- tab management
vim.keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
vim.keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>ss", "vi'") -- Select text inside single quotes
vim.keymap.set("n", "<leader>dd", "vi\"") -- Select text inside double quotes

vim.keymap.set("n", "<C-t>", "<cmd>term<CR>") -- Open terminal
