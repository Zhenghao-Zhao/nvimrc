return {
  'nvim-treesitter/nvim-treesitter-context',
  event = 'VeryLazy', -- Optional: Load only when needed
  dependencies = { 'nvim-treesitter/nvim-treesitter' }, -- Links to your existing treesitter
  opts = {
    enable = true,
    max_lines = 3,
  },
}
