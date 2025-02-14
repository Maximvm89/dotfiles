-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.list = true
vim.g.autoformat = false

vim.opt.listchars = {
  eol = "$",
  tab = ">-", -- Note: 'tab' requires two characters
  trail = "~",
  extends = ">",
  precedes = "<",
  nbsp = "+", -- Non-breaking space
}
