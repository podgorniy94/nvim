-- +
-- Plugins withot extra configurations
return {
  {
    -- Dependency For Other Plugins
    "nvim-lua/plenary.nvim",
    -- Essentials
    "tpope/vim-surround",
    "vim-scripts/ReplaceWithRegister",
  },
  -- Maximizes and restore current window
  {
    "szw/vim-maximizer",
    keys = {
      { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
    },
  },
  -- Improvement UI select/input
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
  },
  -- Show line modifications on left hand side
  -- {
  --     "lewis6991/gitsigns.nvim",
  --     event = { "BufReadPre", "BufNewFile" },
  --     config = true,
  -- }
}
