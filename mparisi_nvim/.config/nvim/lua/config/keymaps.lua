

vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end, {desc="Open Diagnostic in Float"})
vim.keymap.set("n", "<leader>cf", function() require("conform").format() end, {desc="Format current file"})
vim.keymap.set("v", "<leader>cf", function() require("conform").format() end, {desc="Format selection"})
vim.keymap.set("n", "<leader>d", vim.cmd.Dashboard, {desc="Dashboard"})
vim.keymap.set("n", "<leader>n", '<cmd>Noice fzf<cr>', {desc="Notifications"})
vim.keymap.set("n", "<leader>pf", '<cmd>NeovimProjectDiscover history<cr>', {desc="Find a project"})
vim.keymap.set("n", "<leader>ph", '<cmd>NeovimProjectHistory<cr>', {desc="Select a project from history"})
require("which-key").add({
  { "<leader>u", group = "Upload / Download", icon = "" },
  {
    "<leader>ud",
    "<cmd>TransferDownload<cr>",
    desc = "Download from remote server (scp)",
    icon = { color = "green", icon = "󰇚" },
  },
  {
    "<leader>uf",
    "<cmd>DiffRemote<cr>",
    desc = "Diff file with remote server (scp)",
    icon = { color = "green", icon = "" },
  },
  {
    "<leader>ui",
    "<cmd>TransferInit<cr>",
    desc = "Init/Edit Deployment config",
    icon = { color = "green", icon = "" },
  },
  {
    "<leader>ur",
    "<cmd>TransferRepeat<cr>",
    desc = "Repeat transfer command",
    icon = { color = "green", icon = "󰑖" },
  },
  {
    "<leader>uu",
    "<cmd>TransferUpload<cr>",
    desc = "Upload to remote server (scp)",
    icon = { color = "green", icon = "󰕒" },
  },
})
