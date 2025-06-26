return {
	{
		"nvim-orgmode/orgmode",
		event = "VeryLazy",
		dev = PL_DEV,
		enabled = not PL_DEV,
		-- tag = "0.3.7",
		ft = { "org" },
		config = function()
			-- Setup orgmode
			require("orgmode").setup({
				org_agenda_files = "~/notes/**/*",
				org_default_notes_file = "~/notes/refile.org",
				org_todo_keywords = { "TODO", "IN_PROGRESS", "CODE_REVIEW", "|", "DONE", "TECH_PORTAL" },
				org_todo_keyword_faces = {
					IN_PROGRESS = ":foreground cyan :weight bold :underline on",
					CODE_REVIEW = ":foreground cyan :underline on :slant italic",
					TECH_PORTAL = ":underline on :weight bold :slant italic"
				},
				win_split_mode = "vsplit",
				win_border = { "double" },
			})
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
			-- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
			-- add ~org~ to ignore_install
			require("nvim-treesitter.configs").setup({
				ignore_install = { "org" },
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
				directory = "~/notes",
				-- optional
				org_files = {
					"~/notes",
				},
				-- bindings = {
				-- 	goto_next_node = "<CR>",
				-- 	goto_prev_node = "<BS>",
				-- },
			})
		end,
	},
	{
		"akinsho/org-bullets.nvim",
		enabled = not PL_DEV,
		dev = PL_DEV,
		config = function()
			require("org-bullets").setup({
				-- concealcursor = true
			})
		end,
	},
}
