vim.keymap.set("n", "gl", function()
	vim.diagnostic.open_float()
end, { desc = "Open Diagnostic in Float" })
vim.keymap.set("n", "<leader>cf", function()
	require("conform").format()
end, { desc = "Format current file" })
vim.keymap.set("v", "<leader>cf", function()
	require("conform").format()
end, { desc = "Format selection" })
vim.keymap.set("n", "<leader>d", vim.cmd.Dashboard, { desc = "Dashboard" })
-- vim.keymap.set("n", "<leader>n", "<cmd>Noice fzf<cr>", { desc = "Notifications" })
vim.keymap.set("n", "<leader>pf", "<cmd>NeovimProjectDiscover history<cr>", { desc = "Find a project" })
vim.keymap.set("n", "<leader>ph", "<cmd>NeovimProjectHistory<cr>", { desc = "Select a project from history" })
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

local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")

-- Repeat movement with ; and ,
-- ensure ; goes forward and , goes backward regardless of the last direction
vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)

-- vim way: ; goes to the direction you were moving.
-- vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
-- vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)

-- Optionally, make builtin f, F, t, T also repeatable with ; and ,
vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f_expr, { expr = true })
vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F_expr, { expr = true })
vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t_expr, { expr = true })
vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T_expr, { expr = true })

-- -- example: make gitsigns.nvim movement repeatable with ; and , keys.
-- local gs = require("mini.diff")
-- -- make sure forward function comes first
-- local next_hunk_repeat, prev_hunk_repeat = ts_repeat_move.make_repeatable_move_pair(gs.goto_hunk('next'), gs.goto_hunk('prev'))
-- -- -- Or, use `make_repeatable_move` or `set_last_move` functions for more control. See the code for instructions.
-- --
-- vim.keymap.set({ "n", "x", "o" }, "]h", next_hunk_repeat)
-- vim.keymap.set({ "n", "x", "o" }, "[h", prev_hunk_repeat)
