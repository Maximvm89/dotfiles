-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Create an augroup to manage our autocommands
local shebang_group = vim.api.nvim_create_augroup("ShebangDetection", { clear = true })

-- Autocommand for files starting with #!/bin/sh
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  group = shebang_group,
  pattern = "*",
  callback = function()
    local first_line = vim.fn.getline(1)
    if first_line:match("^#!/bin/sh") then
      vim.bo.filetype = "bash"
    elseif first_line:match("^#%%Module") then
      vim.bo.filetype = "tcl"
    end
  end,
})
