return {
	{
		"nvim-neorg/neorg",
		dev = PL_DEV,
		enabled = true,
		lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
		dependencies = {
			{ "nvim-neorg/lua-utils.nvim", dev = PL_DEV },
			{ "pysan3/pathlib.nvim", dev = PL_DEV },
			{ "nvim-neotest/nvim-nio", dev = PL_DEV },
		},
		version = "*", -- Pin Neorg to the latest stable release
		config = function()
			require("neorg").setup({
				load = {
					["core.defaults"] = {},
					["core.concealer"] = {

						config = {
							icon_preset = "diamond",
							icons = {
								code_block = {
									conceal = false,
								},
							},
						},
					},
					["core.dirman"] = {
						config = {
							workspaces = {
								notes = "~/notes/Marco",
							},
							default_workspace = "notes",
						},
					},
				},
			})
		end,
	},
}
