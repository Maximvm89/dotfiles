return {
	-- disable gitsigns.nvim
	{
		"lewis6991/gitsigns.nvim",
		enabled = false,
	},

	-- setup mini.diff
	{
		"echasnovski/mini.diff",
		enabled = true,
		dev = _G.PL_DEV,
		event = "VeryLazy",
		mappings = {
			-- Apply hunks inside a visual/operator region
			apply = "gH",

			-- Reset hunks inside a visual/operator region
			reset = "gh",

			-- Hunk range textobject to be used inside operator
			-- Works also in Visual mode if mapping differs from apply and reset
			textobject = "gh",

			-- Go to hunk range in corresponding direction
			goto_first = "[h",
			goto_prev = "[[",
			goto_next = "]]",
			goto_last = "]h",
		},

		keys = {
			{
				"<leader>go",
				function()
					require("mini.diff").toggle_overlay(0)
				end,
				desc = "Toggle mini.diff overlay",
			},
		},
		opts = {
			view = {
				style = "sign",
				signs = {
					add = "▎",
					change = "▎",
					delete = "",
				},
			},
		},
	},
	{
		"mini.diff",
		opts = function()
			Snacks.toggle({
				name = "Mini Diff Signs",
				get = function()
					return vim.g.minidiff_disable ~= true
				end,
				set = function(state)
					vim.g.minidiff_disable = not state
					if state then
						require("mini.diff").enable(0)
					else
						require("mini.diff").disable(0)
					end
					-- HACK: redraw to update the signs
					vim.defer_fn(function()
						vim.cmd([[redraw!]])
					end, 200)
				end,
			}):map("<leader>uG")
		end,
	},
}
