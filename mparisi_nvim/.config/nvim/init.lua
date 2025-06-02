-- init.lua
if os.getenv("PL_ZONE") == "vfx" then
	_G.PL_DEV = true
else
	_G.PL_DEV = false
end

if os.getenv("PL_SITE") then
	_G.PL_SITE = true
end

if _G.PL_SITE then
	_G.Work_dir = "/net/code/workspaces/mparisi/git"
	_G.Local_repos = "/net/code/workspaces/mparisi/lazyvim"
else
	_G.Work_dir = "/Volumes/Framestore/git"
	_G.Local_repos = ""
end

_G.Config_dir = "~/.config/nvim"

require("core.lsp")
require("config.lazy")
