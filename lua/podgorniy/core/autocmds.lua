-------------------------------------------------------------------------------
-- Autocommands
-------------------------------------------------------------------------------

local autocmd = vim.api.nvim_create_autocmd

-- Enable spell checker on certain files

autocmd('BufRead, BufNewFile', {
    pattern = '*.md',
    command = 'setlocal spell',
})

-- Centering document vertically when entering insert mode

autocmd('InsertEnter', { command = 'norm zz' })
