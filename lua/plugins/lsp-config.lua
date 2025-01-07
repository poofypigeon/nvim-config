-- TODO
-- 1. keymappings
-- 2. autocomplete
-- 3. lsp style

return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { 'lua_ls', 'clangd', 'pyright' }
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.clangd.setup({ capabilities = capabilities })
            lspconfig.gopls.setup({ capabilities = capabilities })
            lspconfig.zls.setup({ capabilities = capabilities })
            lspconfig.pyright.setup({ capabilities = capabilities })

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
            vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        end
    },
--    {'hrsh7th/cmp-nvim-lsp'},
--    {'hrsh7th/nvim-cmp'}, 
}
