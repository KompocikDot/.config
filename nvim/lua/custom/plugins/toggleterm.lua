return {
  'akinsho/toggleterm.nvim',
  version = '*',
  keys = {
    { '<leader>t', '<cmd>ToggleTerm<cr>', desc = 'Toggle Terminal' },
  },

  opts = {
    open_mapping = [[<c- >]],
    insert_mappings = false,
    terminal_mappings = true,
  },

  config = function()
    require('toggleterm').setup()
  end,
}
