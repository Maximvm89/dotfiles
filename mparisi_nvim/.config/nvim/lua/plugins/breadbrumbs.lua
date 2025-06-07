local M = {
	"LunarVim/breadcrumbs.nvim",
	dev = PL_DEV,
	dependencies = {
		{
			"SmiteshP/nvim-navic",
			dev = PL_DEV,
		},
	},
}


function M.config()
	require("breadcrumbs").setup()
end

return M
