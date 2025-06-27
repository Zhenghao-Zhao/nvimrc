return {
  'luckasRanarison/tailwind-tools.nvim',
  name = 'tailwind-tools',
  build = ':UpdateRemotePlugins',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-telescope/telescope.nvim', -- optional
    'neovim/nvim-lspconfig', -- optional
  },
  opts = {
    document_color = {
      enabled = true, -- default
      kind = 'background', -- 'inline' | 'foreground' | 'background'
    },
    -- other options...
  },
  ft = { 'html', 'javascriptreact', 'typescriptreact', 'vue', 'svelte' },
}
