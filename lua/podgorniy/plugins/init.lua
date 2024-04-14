return { -- Plugins withot extra configurations
  {
    'nvim-lua/plenary.nvim', -- Dependency For Other Plugins
    'christoomey/vim-tmux-navigator',
  },
  {
    'szw/vim-maximizer', -- Maximizes and restore current window
    keys = {
      { '<leader>sm', '<cmd>MaximizerToggle<CR>', desc = 'Maximize/minimize a split' },
    },
  },
  {
    'stevearc/dressing.nvim', -- Improvement UI select/input
    event = 'VeryLazy',
  },
}
