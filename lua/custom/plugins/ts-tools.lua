return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {},
  config = function()
    require('typescript-tools').setup {
      on_attach = function(client, bufnr)
        -- Set up an autocommand to remove unused imports before saving
        vim.api.nvim_create_autocmd('BufWritePre', {
          buffer = bufnr,
          callback = function()
            -- Remove unused imports and organize imports
            vim.cmd 'TSToolsOrganizeImports'
          end,
        })
      end,
    }
  end,
}
