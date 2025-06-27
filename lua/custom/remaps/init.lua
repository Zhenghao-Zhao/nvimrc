vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
-- Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Exit current buffer' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader>b', '<CMD>bprevious<CR>', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<leader>n', '<CMD>bnext<CR>', { desc = 'Go to next buffer' })

vim.keymap.set('n', '<C-s>', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<leader>j', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>cprev<CR>zz')
-- vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
-- vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

vim.keymap.set('n', '<C-c>', '<Esc>', { noremap = true })

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '<leader>4', '<C-w>s<C-w>v<C-w>k<C-w>v<C-w>h')

-- local function organize_imports()
--   local params = { command = '_typescript.organizeImports', arguments = { vim.api.nvim_buf_get_name(0) }, title = '' }
--   vim.lsp.buf.execute_command(params)
-- end
-- vim.keymap.set('n', '<leader>i', organize_imports, { desc = 'auto organize typescript imports' })
vim.keymap.set('n', '<leader>o', '<CMD>Oil<CR>', { desc = 'Open oil parent directory' })

-- Select line content (exclude newline)
vim.keymap.set('n', 'vv', '^vg_', { desc = 'Select line content' })

vim.keymap.set('n', '<leader>`', function()
  -- Clear all cached Lua modules (prevents 'require' from using old versions)
  for name, _ in pairs(package.loaded) do
    if name:match '^custom%.' or name == 'init' then -- Adjust if your modules have other prefixes
      package.loaded[name] = nil
    end
  end

  vim.cmd 'luafile ~/.config/nvim/init.lua'

  vim.notify('NVim config reloaded!', vim.log.levels.INFO)
end)

vim.keymap.set('n', '<leader>fa', ':TSToolsFixAll<CR>')
vim.keymap.set('n', '<leader>fm', ':TSToolsAddMissingImports<CR>')
vim.keymap.set('n', '<leader>fo', ':TSToolsOrganizeImports<CR>')

-- Next tab (e.g., Tab key)
vim.keymap.set('n', '<Tab><Tab>', ':tabnext<CR>', { noremap = true, silent = true })

-- Previous tab (e.g., Shift + Tab)
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>', { noremap = true, silent = true })
-- Explicitly restore Ctrl-i (same as Tab but treated differently)
vim.keymap.set('n', '<C-i>', '<C-i>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>g', ':!go run .<CR>', { buffer = true })

-- vim.keymap.set('n', '<leader>-', function()
--   print 'testing'
-- end)
