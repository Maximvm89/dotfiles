return {
  -- Add the Catppuccin theme plugin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },
  -- Configure LazyVim to use Catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
