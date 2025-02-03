return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      python = { "black" }, -- Pyright doesn't format, so use Black
      sh = { "shfmt" },
      yaml = { "yamlls" },
    },
    format_on_save = false, -- Disable auto-format on save
  },
}
