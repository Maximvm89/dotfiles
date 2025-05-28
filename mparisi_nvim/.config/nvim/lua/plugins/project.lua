return {
	"ahmedkhalf/project.nvim",
	dev = true,
	config = function()
		require("project_nvim").setup({
			detection_methods = { "pattern", "lsp" },
			patterns = { "pyrightconfig.json", ".git", ".module" },
			silent_chdir = false,
		})
	end,
}
