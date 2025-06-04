return {
	{
		"MeanderingProgrammer/render-markdown.nvim",
		dev = PL_DEV,
		dependencies = {
			{ "nvim-treesitter/nvim-treesitter", dev = PL_DEV },
			{ "echasnovski/mini.nvim", dev = PL_DEV },
		}, -- if you use the mini.nvim suite
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
		-- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		---@module 'render-markdown'
		---@type render.md.UserConfig
		opts = {},
	},
	{
		"tadmccorkle/markdown.nvim",
		enabled = false,
		dev = PL_DEV,
		ft = "markdown", -- or 'event = "VeryLazy"'
		opts = {
			-- configuration here or empty for defaults
		},
	},
}
