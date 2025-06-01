-- init.lua
if os.getenv("PL_ZONE") == "vfx" then
  _G.PL_DEV = true
else
  _G.PL_DEV = false
end


require("core.lsp")
require("config.lazy")
