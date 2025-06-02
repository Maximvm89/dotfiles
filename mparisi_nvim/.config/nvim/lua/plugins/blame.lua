return {
	{
		"FabijanZulj/blame.nvim",
		lazy = false,
		dev = _G.PL_DEV,
		config = function()
			require("blame").setup({})
		end,
	},
}
