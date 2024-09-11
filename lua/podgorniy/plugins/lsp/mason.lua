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
        'html',
        'cssls',
        'lua_ls',
        'emmet_ls', -- snippets for HTML, CSS
        'pyright',
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        'prettier', -- prettier formatter
        'stylua', -- lua formatter
        'ruff', -- python formatter
        'djlint', -- djangohtml, jinja formatter
        'quick-lint-js', -- js linter
        'mypy', -- python linter (static type checker)
        -- 'pylint', -- python linter
        -- 'isort', -- python import formatter
        -- 'black', -- python formatter
      },
    })
  end,
}
