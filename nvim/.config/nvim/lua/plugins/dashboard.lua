-- lazy.nvim
return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    dashboard = {
      -- your dashboard configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  },
  keys = {
    {
      "<leader>dd",
      function() require("snacks").dashboard() end,
      desc = "Dashboard",
    }
  }
}
