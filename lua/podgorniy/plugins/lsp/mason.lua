return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim', -- bridges mason.nvim with the lspconfig plugin
    'WhoIsSethDaniel/mason-tool-installer.nvim', -- keep automatically up-to-date with tools
  },
  config = function()
    -- import mason
    local mason = require('mason')

    -- import mason-lspconfig
    local mason_lspconfig = require('mason-lspconfig')

    local mason_tool_installer = require('mason-tool-installer')

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        -- "tsserver",
        'html',
        'cssls',
        'tailwindcss',
        'lua_ls',
        'emmet_ls',
        'pyright',
        'ruff_lsp',
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    mason_tool_installer.setup({
      ensure_installed = {
        'ruff', -- ruff linter (python)
        'pylint', -- pylint linter
        'prettier', -- prettier formatter
        'stylua', -- lua formatter
        'isort', -- python formatter
        'black', -- python formatter
        'pylint', -- python linter
        -- "eslint_d", -- js linter
      },
    })
  end,
}
