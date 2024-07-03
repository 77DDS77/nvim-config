return {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('typescript-tools').setup {
            on_attach = require('configs.lsp').on_attach,
        }
    end,
}
