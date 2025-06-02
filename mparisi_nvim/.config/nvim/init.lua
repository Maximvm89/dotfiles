-- init.lua
if os.getenv("PL_ZONE") == "vfx" then
	_G.PL_DEV = true
	_G.Theme = "nord"
elseif os.getenv("PL_ZONE") == "shared" then
	_G.Theme = "kanagawa"
else
	-- _G.Theme = "catppuccin-frappe"
	_G.Theme = "nord"
	_G.PL_DEV = false
end

if os.getenv("PL_SITE") then
	_G.PL_SITE = true
end

if _G.PL_SITE then
	_G.Work_dir = "/net/code/workspaces/mparisi/git"
	_G.Local_repos = "/net/code/workspaces/mparisi/lazyvim"
	_G.Treesitter_parsers_path = "/net/code/workspaces/mparisi/lazyvim/nvim-treesitter/parser"
	vim.opt.runtimepath:prepend(Treesitter_parsers_path)
else
	_G.Work_dir = "/Volumes/Framestore/git"
	_G.Local_repos = ""
	_G.Treesitter_parsers_path = nil
end

_G.Config_dir = "~/.config/nvim"

require("core.lsp")
require("config.lazy")

vim.cmd("colorscheme " .. Theme)
