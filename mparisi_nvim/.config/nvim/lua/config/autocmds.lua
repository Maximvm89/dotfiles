
local api = vim.api

-- don't auto comment new line
api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*.py",
  callback = function()
    vim.cmd("TransferUpload")
  end,
})
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.py",
  callback = function()
    vim.cmd("TransferUpload")
  end,
})

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})


-- go to last loc when opening a buffer
-- this mean that when you open a file, you will be at the last position
api.nvim_create_autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local lcount = vim.api.nvim_buf_line_count(0)
        if mark[1] > 0 and mark[1] <= lcount then
            pcall(vim.api.nvim_win_set_cursor, 0, mark)
        end
    end,
})


vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup('lsp-attach', { clear = true }),
    callback = function(event)
        local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end


        map("gl", vim.diagnostic.open_float, "Open Diagnostic Float")
        map("K", vim.lsp.buf.hover, "Hover Documentation")
        map("gs", vim.lsp.buf.signature_help, "Signature Documentation")
	map("<leader>ct", require("fzf-lua").lsp_typedefs, "[C]ode [T]ype Definition")
	map("<leader>cs", require("fzf-lua").lsp_document_symbols, "[C]ode file [S]ymbols")
	map("<leader>cD", vim.lsp.buf.declaration, "[C]ode [D]eclaration")
	map("<leader>cd", require("fzf-lua").lsp_definitions, "[C]ode [D]efinition")
	map("<leader>ca", require("fzf-lua").lsp_code_actions, "[C]ode [A]efinition")
        map("<leader>v", "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>", "Goto Definition in Vertical Split")

        local wk = require("which-key")
        wk.add({
            { "<leader>la", vim.lsp.buf.code_action,                           desc = "Code Action" },
            { "<leader>lA", vim.lsp.buf.range_code_action,                     desc = "Range Code Actions" },
            { "<leader>ls", vim.lsp.buf.signature_help,                        desc = "Display Signature Information" },
            { "<leader>lr", vim.lsp.buf.rename,                                desc = "Rename all references" },
            { "<leader>lf", vim.lsp.buf.format,                                desc = "Format" },
            -- { "<leader>lc", require("config.utils").copyFilePathAndLineNumber, desc = "Copy File Path and Line Number" },
            { "<leader>Wa", vim.lsp.buf.add_workspace_folder,                  desc = "Workspace Add Folder" },
            { "<leader>Wr", vim.lsp.buf.remove_workspace_folder,               desc = "Workspace Remove Folder" },
            {
                "<leader>Wl",
                function()
                    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
                end,
                desc = "Workspace List Folders",
            },
        })

        local function client_supports_method(client, method, bufnr)
            if vim.fn.has 'nvim-0.11' == 1 then
                return client:supports_method(method, bufnr)
            else
                return client.supports_method(method, { bufnr = bufnr })
            end
        end

        local client = vim.lsp.get_client_by_id(event.data.client_id)

        if client.name == 'ruff' then
            client.server_capabilities.hoverProvider = false
        end
        if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_documentHighlight, event.buf) then
            local highlight_augroup = vim.api.nvim_create_augroup('lsp-highlight', { clear = false })
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
                buffer = event.buf,
                group = highlight_augroup,
                callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
                buffer = event.buf,
                group = highlight_augroup,
                callback = vim.lsp.buf.clear_references,
            })

            vim.api.nvim_create_autocmd('LspDetach', {
                group = vim.api.nvim_create_augroup('lsp-detach', { clear = true }),
                callback = function(event2)
                    vim.lsp.buf.clear_references()
                    vim.api.nvim_clear_autocmds { group = 'lsp-highlight', buffer = event2.buf }
                end,
            })
        end


        if client and client_supports_method(client, vim.lsp.protocol.Methods.textDocument_inlayHint, event.buf) then
            map('<leader>th', function()
                vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled { bufnr = event.buf })
            end, '[T]oggle Inlay [H]ints')
        end
    end,

})
