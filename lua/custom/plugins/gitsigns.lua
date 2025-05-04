return {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup {
      current_line_blame = true, -- Show blame for current line
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- Display at end of line
        delay = 300, -- Delay before showing
        ignore_whitespace = false,
      },
      signcolumn = true, -- Show signs in gutter
    }
  end,
}
