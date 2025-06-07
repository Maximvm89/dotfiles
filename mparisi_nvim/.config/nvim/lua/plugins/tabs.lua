return {
	"willothy/nvim-cokeline",
	dev = PL_DEV,
	dependencies = {
		{"nvim-lua/plenary.nvim", dev = PL_DEV }, -- Required for v0.4.0+
		{"nvim-tree/nvim-web-devicons", dev = PL_DEV }, -- If you want devicons
		{"stevearc/resession.nvim", dev = PL_DEV }, -- Optional, for persistent history
	},
	config = true,
}
