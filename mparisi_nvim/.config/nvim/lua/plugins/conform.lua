return {
	"stevearc/conform.nvim",
	dev = true,
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "black" },
			bash = { "beautysh" },
		},
	},
}
