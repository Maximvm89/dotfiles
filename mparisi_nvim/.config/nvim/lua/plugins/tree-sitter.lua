return {
	"nvim-treesitter/nvim-treesitter",
	enabled = true,
	dev = _G.PL_DEV,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			-- ensure_installed = { "lua", "python", "tcl", "bash", "json", "regex" },
			parser_install_dir  = Treesitter_parsers_path,
			sync_install = false,
			highlight = { enable = true, disable = { "org", "norg" }, },
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection =   "<C-Enter>", -- set to `false` to disable one of the mappings
					node_incremental = "<C-Enter>",
					node_decremental = "<C-Backspace>",
					scope_incremental = false,
				},
			},
		})
	end,
}
