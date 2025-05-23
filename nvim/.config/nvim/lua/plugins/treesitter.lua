-- lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    parser_install_dir = "~/.local/treesitter/parsers",
    ensure_installed = { "lua", "python", "bash" },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    vim.opt.runtimepath:prepend(opts.parser_install_dir)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
