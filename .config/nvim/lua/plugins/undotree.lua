return {
	"mbbill/undotree",
	config = function()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		vim.g.undotree_WindowLayout = 2
		vim.g.undotree_SplitWidth = 40
	end,
}
