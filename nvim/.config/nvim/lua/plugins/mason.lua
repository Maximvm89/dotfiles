-- ~/.config/nvim/lua/plugins/mason.lua
return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "pyright",
      "lua-language-server",
      "bash-language-server",
      "prettier",
      "black",
    },
  },
}
