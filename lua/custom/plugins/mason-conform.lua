return {
  'zapling/mason-conform.nvim',
  config = function()
    require('mason-conform').setup {
      ignore_install = { 'prettier' }, -- List of formatters to ignore during install
    }
  end,
}
