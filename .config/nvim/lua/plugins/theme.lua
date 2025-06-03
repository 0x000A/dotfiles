-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		no_italic = true, vim.cmd.colorscheme("catppuccin-mocha")
-- 	end,
-- }

return {
	"Mofiqul/vscode.nvim",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("vscode")
	end,
}
