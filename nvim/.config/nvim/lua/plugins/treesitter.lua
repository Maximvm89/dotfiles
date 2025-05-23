-- ~/.config/nvim/lua/plugins/treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- Set a custom writable parser install location
    local parser_path = vim.fn.stdpath("state") .. "/treesitter-parsers"
    vim.fn.mkdir(parser_path, "p")

    -- Prepend to runtimepath so Neovim sees it
    vim.opt.runtimepath:prepend(parser_path)

    -- Set the parser installation directory
    opts.parser_install_dir = parser_path

    -- Merge or override other settings if needed
    opts.ensure_installed = opts.ensure_installed or { "lua", "python", "bash" }
    opts.highlight = opts.highlight or { enable = true }
    opts.indent = opts.indent or { enable = true }

    return opts
  end,
}
