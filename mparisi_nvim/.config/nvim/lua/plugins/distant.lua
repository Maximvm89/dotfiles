return {
	"chipsenkbeil/distant.nvim",
	dev = _G.PL_DEV,
	enabled = false,
	branch = "v0.3",
	config = function()
		require("distant"):setup()
	end,
}
