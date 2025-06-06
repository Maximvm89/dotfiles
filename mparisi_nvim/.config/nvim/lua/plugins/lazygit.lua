-- nvim v0.8.0
return {
	"kdheepak/lazygit.nvim",
	dev = _G.PL_DEV,
	lazy = true,
	cmd = {
		"LazyGit",
		"LazyGitConfig",
		"LazyGitCurrentFile",
		"LazyGitFilter",
		"LazyGitFilterCurrentFile",
	},
	-- optional for floating window border decoration
	dependencies = {
		"nvim-lua/plenary.nvim",
		dev = PL_DEV,
	},
	-- setting the keybinding for LazyGit with 'keys' is recommended in
	-- order to load the plugin when the command is run for the first time
	keys = {
		{ "<leader>gg", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit" },
		{ "<leader>gs", "<cmd>Neotree git_status<cr>", desc = "Neotree GitStatus" }
	},
}
