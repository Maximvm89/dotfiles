return {
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
	root_markers = {
		"pyproject.toml",
		"pyrightconfig.json",
	},
	settings = {
		pyright = {
			analysis = {
				autoSearchPaths = true,
				disableOrganizeImports = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = "openFilesOnly",
			},
		},
	},
}
