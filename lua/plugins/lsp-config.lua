return {
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup {
          ensure_installed = { "lua_ls", "rust_analyzer", "golangci_lint_ls", "gopls", "jdtls", "gradle_ls", "pyright"},
        }
      end
    },
    {
     "neovim/nvim-lspconfig",
      config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})
        lspconfig.jdtls.setup({})
        lspconfig.rust_analyzer.setup({})
        lspconfig.gopls.setup({})
        lspconfig.golangci_lint_ls.setup({})
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
        vim.keymap.set('n', 'dD', vim.lsp.buf.declaration, {})
        vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
      end
    },
}
