return {
	"stevearc/conform.nvim",
	dev = _G.PL_DEV,
	enabled = true,
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "black" },
			bash = { "beautysh" },
		},
	},
}
