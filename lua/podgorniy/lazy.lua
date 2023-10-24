local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = ","

require("lazy").setup('podgorniy.plugins')

--  Displaying the indention levels
--    use "lukas-reineke/indent-blankline.nvim"

-----------------------------------

--[[
-- Treesitter
use {
'nvim-treesitter/nvim-treesitter',
run = function()
    local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
    ts_update()
end
}

" LSP (Language Server Protocol)
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'

" Git
" Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-fugitive'
--]]
