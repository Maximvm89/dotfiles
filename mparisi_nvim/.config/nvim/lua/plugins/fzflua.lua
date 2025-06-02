return {
	"ibhagwan/fzf-lua",
	enabled = true,
	dev = _G.PL_DEV,
	-- optional for icon support
	-- dependencies = { "nvim-tree/nvim-web-devicons" },
	-- -- or if using mini.icons/mini.nvim
	dependencies = { "echasnovski/mini.icons", dev = PL_DEV },
	opts = {
		winopts = {

			fullscreen = true,
			preview = {
				layout = "vertical",
			},
		},
	},
	keys = {

		{
			"<leader>sff",
			function()
				require("fzf-lua").files()
			end,
			desc = "Search Files in current work directory",
		},
		{
			"<leader>sc",
			function()
				require("fzf-lua").files({ cwd = "~/.config/nvim" })
			end,
			desc = "Search Config Files",
		},
		{
			"<leader>sR",
			function()
				require("fzf-lua").resume()
			end,
			desc = "Search Resume",
		},
		{
			"<leader>sfp",
			function()
				require("fzf-lua").files({ cwd = Work_dir})
			end,
			desc = "Search Files in dev Project",
		},
		{
			"<leader>sb",
			function()
				require("fzf-lua").lgrep_curbuf()
			end,
			desc = "Live Grep current Buffer",
		},
		{
			"<leader>sgg",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "Live Grep current work directory",
		},
		{
			"<leader>sgp",
			function()
				require("fzf-lua").live_grep({ cwd = Work_dir})
			end,
			desc = "Live Grep in dev Project",
		},
		{
			"<leader><leader>",
			function()
				require("fzf-lua").buffers()
			end,
			desc = "Open Buffers",
		},
		{
			"<leader>sh",
			function()
				require("fzf-lua").oldfiles()
			end,
			desc = "Search Files History",
		},
	},
}
