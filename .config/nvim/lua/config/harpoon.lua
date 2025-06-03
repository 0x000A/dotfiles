local harpoon = require("harpoon")
harpoon:setup({})

vim.keymap.set("n", "<leader>e", function()
	harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Open harpoon window" })

vim.keymap.set("n", "<leader>a", function()
	harpoon:list():add()
end, { desc = "Add a buffer to harpoon" })

vim.keymap.set("n", "<leader>j", function()
	harpoon:list():select(1)
end, { desc = "Go to the first harpoon buffer" })

vim.keymap.set("n", "<leader>k", function()
	harpoon:list():select(2)
end, { desc = "Go to the second harpoon buffer" })

vim.keymap.set("n", "<leader>l", function()
	harpoon:list():select(3)
end, { desc = "Go to the third harpoon buffer" })

vim.keymap.set("n", "<leader>;", function()
	harpoon:list():select(4)
end, { desc = "Go to the fourth harpoon buffer" })
