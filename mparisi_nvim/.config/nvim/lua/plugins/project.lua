return {
	"coffebar/neovim-project",
	enabled = false,
	opts = {
		projects = { -- define project roots
			"/Volumes/Framestore/git",
			"~/.config/*",
		},
		last_session_on_startup = false,
		picker = {
			type = "telescope", -- or "fzf-lua"
		},
	},
	init = function()
		-- enable saving the state of plugins in the session
		vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
	end,
	dependencies = {
		{ "nvim-lua/plenary.nvim", dev = PL_DEV },
		-- optional picker
		{ "nvim-telescope/telescope.nvim", tag = "0.1.4", dev = PL_DEV },
		-- optional picker
		{ "ibhagwan/fzf-lua", dev = PL_DEV },
		{ "Shatur/neovim-session-manager", dev = PL_DEV },
	},
	lazy = false,
	priority = 100,
}
