

vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end, {desc="Open Diagnostic in Float"})
vim.keymap.set("n", "<leader>cf", function() require("conform").format() end, {desc="Format current file"})
vim.keymap.set("v", "<leader>cf", function() require("conform").format() end, {desc="Format selection"})

