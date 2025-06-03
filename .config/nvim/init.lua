-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set nerd font
vim.g.have_nerd_font = true

require("config/lazy")
require("config/autocommands")
require("config/harpoon")
require("config/keymaps")
require("config/lspconfig")
require("config/options")
require("config/telescope")
