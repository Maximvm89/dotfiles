return {
 	"catppuccin/nvim",
	dev = true,
	name = "catppuccin",
	priority = 1000,
	config = function()
		require('catppuccin').setup({});
		vim.cmd("colorscheme catppuccin-frappe");
	end
}
