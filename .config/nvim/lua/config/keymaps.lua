-- [[ Basic Keymaps ]]

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Include end of line when yanking a line
vim.keymap.set("n", "Y", "yg$")

-- Better navigation
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

-- Navigating windows using Ctrl-H, Ctrl-J, Ctrl-K, Ctrl-L
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Resize windows using arrow keys
vim.keymap.set("n", "<Up>", ":resize +2<CR>", { silent = true })
vim.keymap.set("n", "<Down>", ":resize -2<CR>", { silent = true })
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", { silent = true })
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", { silent = true })

-- Navigate buffers
vim.keymap.set("n", "<C-n>", ":bn<CR>", { silent = true, desc = "Go to the next buffer" })
vim.keymap.set("n", "<C-p>", ":bp<CR>", { silent = true, desc = "Go to the previous buffer" })
vim.keymap.set("n", "<leader>d", ":bd<CR>", { silent = true, desc = "Close current buffer" })

-- Move lines in visual mode using K and J
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
