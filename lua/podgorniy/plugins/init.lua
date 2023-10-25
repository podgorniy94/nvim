-- Plugins withot extra configurations
return {

    -- Dependency For Other Plugins
    'nvim-lua/plenary.nvim',

    -- Theme
    'mhartington/oceanic-next',

    -- Essentials
    'tpope/vim-surround',
    'vim-scripts/ReplaceWithRegister',

    -- UI improvement for select/input
    {"stevearc/dressing.nvim",
    event = "VeryLazy",},

    -- Maximizes and restore current window
    {"szw/vim-maximizer",
    keys = {"<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split"} },
}
