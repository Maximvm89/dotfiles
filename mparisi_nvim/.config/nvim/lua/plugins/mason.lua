return {
	"mason-org/mason.nvim",
	dev = _G.PL_DEV,
	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
}
