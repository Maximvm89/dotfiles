return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	dev = _G.PL_DEV,
	dependencies = { "nvim-tree/nvim-web-devicons", dev = PL_DEV },
	opts = {
		options = { theme = Theme },
	},
}
