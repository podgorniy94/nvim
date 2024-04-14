return {
  'stevearc/conform.nvim',
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile' }, -- to disable, comment this out
  config = function()
    local conform = require('conform')

    conform.setup({
      formatters_by_ft = {
        javascript = { 'prettier' },
        css = { 'prettier' },
        html = { 'prettier' },
        json = { 'prettier' },
        markdown = { 'prettier' },
        lua = { 'stylua' },
        python = { 'isort', 'black' }, -- Executed in the order listed in the table
        htmldjango = { 'djlint' },
      },
    })

    vim.keymap.set({ 'n', 'v' }, '<leader>mp', function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = 'Format file or range (in visual mode)' })
  end,
}
-- conform.setup({
-- format_on_save = {
--   lsp_fallback = true, -- Try to format via LSP if the formatter isn't available
--   async = false,
--   timeout_ms = 1000, -- Timeout for synch formatting
-- },
-- })
