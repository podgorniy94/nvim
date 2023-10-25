-------------------------------------------------------------------------------
-- Autocommands
-- -------------------------------------------------------------------------------

local autocmd = vim.api.nvim_create_autocmd

-- Enable Spell Checker on certain files
autocmd("FileType", {
  pattern = { "html", "markdown", "text" },
  callback = function()
    vim.opt_local.spell = true
  end,
})

-- Centering document vertically when entering insert mode

autocmd('InsertEnter', { command = 'norm zz' })
