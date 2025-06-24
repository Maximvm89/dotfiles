return {
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		dev = PL_DEV,
		enabled = not PL_DEV,
		tag = "0.3.7",
		ft = { "org" },
		config = function()
			-- Setup orgmode
			require("orgmode").setup({
				org_agenda_files = "~/notes/Marco/**/*",
				org_default_notes_file = "~/notes/Marco/refile.org",
			})

			-- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
			-- add ~org~ to ignore_install
			-- require('nvim-treesitter.configs').setup({
			--   ensure_installed = 'all',
			--   ignore_install = { 'org' },
			-- })
			require("blink.cmp").setup({
				sources = {
					per_filetype = {
						org = { "orgmode" },
					},
					providers = {
						orgmode = {
							name = "Orgmode",
							module = "orgmode.org.autocompletion.blink",
							fallbacks = { "buffer" },
						},
					},
				},
			})
		end,
	},
	{
		"chipsenkbeil/org-roam.nvim",
		tag = "0.1.1",
		enabled = not PL_DEV,
		dev = PL_DEV,
		config = function()
			require("org-roam").setup({
				directory = "~/notes/Marco",
				-- optional
				org_files = {
					"~/notes/Marco",
				},
				bindings = {
					goto_next_node = "<CR>",
					goto_prev_node = "<BS>",
				},
			})
		end,
	},
}
