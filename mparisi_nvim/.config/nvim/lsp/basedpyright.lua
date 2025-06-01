return {
	cmd = { "basedpyright-langserver", "--stdio" },
	filetypes = { "python" },
	root_markers = {
		"pyproject.toml",
		"pyrightconfig.json",
	},
	settings = {

		basedpyright = {
			analysis = {
				autoSearchPaths = true,
				disableOrganizeImports = true,
				useLibraryCodeForTypes = true,
				diagnosticMode = "openFilesOnly",
			},
			python = {
				venvPath = {"/Volumes/Framestore/git/venv3.10"}
			},
		},
	},
}
