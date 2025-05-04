require 'init'
require 'custom.sets'
require 'custom.remaps'
-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Quickly compile and run go files
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'go',
  callback = function()
    vim.keymap.set('n', '<leader>g', ':!go run %<CR>', { buffer = true })
    vim.keymap.set('n', '<leader>h', ':!go run *<CR>', { buffer = true })
  end,
})

vim.cmd 'colorscheme nordfox'
vim.g.gofmt_command = 'goimports'
