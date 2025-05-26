return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "python", "bash"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },

    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<Enter>", -- set to `false` to disable one of the mappings
        node_incremental = "<Enter>",
        scope_incremental = false,
        node_decremental = "<Backspace>",
      },
    }
  }
}
