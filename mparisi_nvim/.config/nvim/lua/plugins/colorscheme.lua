return {
	{
		"catppuccin/nvim",
		dev = PL_DEV,
		lazy = false,
		name = "catppuccin",
		dependencies = { "nvim-orgmode/orgmode" , dev=PL_DEV},
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				-- your config here
			})
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		dev = PL_DEV,
	},
	{
		"rebelot/kanagawa.nvim",
		dev = PL_DEV,
		opts = {},
	},
	{
		"shaunsingh/nord.nvim",
		dev = PL_DEV,
	},
}
