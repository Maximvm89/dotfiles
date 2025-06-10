return {
	"nvimdev/dashboard-nvim",
	enabled = true,
	dev = _G.PL_DEV,
	lazy = false, -- As https://github.com/nvimdev/dashboard-nvim/pull/450, dashboard-nvim shouldn't be lazy-loaded to properly handle stdin.
	opts = function()
		local original_logo = [[
         ██╗      █████╗ ███████╗██╗   ██╗██╗   ██╗██╗███╗   ███╗          Z
         ██║     ██╔══██╗╚══███╔╝╚██╗ ██╔╝██║   ██║██║████╗ ████║      Z    
         ██║     ███████║  ███╔╝  ╚████╔╝ ██║   ██║██║██╔████╔██║   z       
         ██║     ██╔══██║ ███╔╝    ╚██╔╝  ╚██╗ ██╔╝██║██║╚██╔╝██║ z         
         ███████╗██║  ██║███████╗   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║           
         ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝           
    ]]

		local logo = Logo
		logo = string.rep("\n", 8) .. logo .. "\n\n"

		local opts = {
			theme = "doom",
			hide = {
				-- this is taken care of by lualine
				-- enabling this messes up the actual laststatus setting after loading a file
				statusline = false,
			},
			config = {
				header = vim.split(logo, "\n"),
        -- stylua: ignore


        center = {
          { action = 'lua require("fzf-lua").files()',                                                      desc = " Find File Cwd",	       icon = " ", key = "ff" },
          { action = function() require("fzf-lua").files({cwd = Work_dir}) end,                             desc = " Find Git File",	       icon = " ", key = "fg" },
          { action = 'Neorg index',                                                                         desc = " New Scratch Note",	       icon = " ", key = "n" },
          { action = function() require("fzf-lua").files({cwd = "~/notes/Marco"}) end,                      desc = " Find Notes",	       icon = " ", key = "fn" },
          { action = function() require("fzf-lua").live_grep({cwd = "~/notes/Marco"}) end,                  desc = " Grep Notes",	       icon = " ", key = "gn" },
          { action = 'lua require("fzf-lua").oldfiles()',                                                   desc = " Old Files",	       icon = " ", key = "r" },
          { action = 'lua require("fzf-lua").live_grep()',                                                  desc = " Grep Cwd",	               icon = " ", key = "gc" },
          { action = function() require("fzf-lua").live_grep({cwd = Work_dir}) end,                         desc = " Grep Git",	               icon = "󱦞 ", key = "gg" },
          { action = function() require("fzf-lua").files({cwd = Config_dir}) end,                           desc = " Config",		       icon = " ", key = "c" },
          { action = function() require("fzf-lua").live_grep({cwd = Config_dir}) end,                       desc = " Grep Config",	       icon = " ", key = "gc" },
          { action = "Lazy",                                                                                desc = " Lazy",		       icon = "󰒲 ", key = "l" },
          { action = function() vim.api.nvim_input("<cmd>qa<cr>") end,                                      desc = " Quit",		       icon = " ", key = "q" },
        },
				footer = function()
					local stats = require("lazy").stats()
					local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
					return { "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
				end,
			},
		}

		for _, button in ipairs(opts.config.center) do
			button.desc = button.desc .. string.rep(" ", 43 - #button.desc)
			button.key_format = "  %s"
		end

		-- open dashboard after closing lazy
		if vim.o.filetype == "lazy" then
			vim.api.nvim_create_autocmd("WinClosed", {
				pattern = tostring(vim.api.nvim_get_current_win()),
				once = true,
				callback = function()
					vim.schedule(function()
						vim.api.nvim_exec_autocmds("UIEnter", { group = "dashboard" })
					end)
				end,
			})
		end

		return opts
	end,
}
