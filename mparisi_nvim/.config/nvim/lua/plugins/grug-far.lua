return {
	"MagicDuck/grug-far.nvim",
	enabled = true,
	opts = {},
	keys = {
		{
			"<leader>srr",
			function()
				require("grug-far").open({ prefills = { paths = vim.fn.expand("%") } })
			end,
			desc = "Search and Replace current file",
		},
		{
			"<leader>srw",
			function()
				require("grug-far").open({
					prefills = {
						paths = vim.fn.expand("%"),
						search = vim.fn.expand("<cword>"),
					},
				})
			end,
			desc = "Search and Replace selected word",
		},
	},
}
