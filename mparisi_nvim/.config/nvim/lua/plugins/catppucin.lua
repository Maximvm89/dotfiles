return {
	"catppuccin/nvim",
	dev = _G.PL_DEV,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({})
		vim.cmd("colorscheme catppuccin-frappe")
	end,
}
