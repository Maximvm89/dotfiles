-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    parser_install_dir = "/root/.local/treesitter/parsers",  -- or $HOME equivalent
    ensure_installed = {
      "python", "lua", "bash", "json", "yaml", "markdown"
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    vim.opt.runtimepath:prepend(opts.parser_install_dir)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
