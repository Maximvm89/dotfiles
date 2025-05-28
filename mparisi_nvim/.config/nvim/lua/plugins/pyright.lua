return {
  {
    "neovim/nvim-lspconfig",
    dev = true,
    opts = {
      servers = {
        pyright = {
          -- Define the root directory to ensure pyrightconfig.json is detected
          root_dir = require("lspconfig.util").root_pattern("pyrightconfig.json", ".git"),
          settings = {
            python = {
              analysis = {
                autoSearchPaths = false,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
                typeCheckingMode = "basic",
              },
            },
          },
        },
      },
    },
  },
}
