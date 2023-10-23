-- Autoinstall Packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer() -- True if packer was just installed

-- Autocammnd that reloads Neovim and installs/update/removes plugins
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- Import packer safely
local status, packer = pcall(require, "packer")
if not status then
  return
end

-- Adding list of plugins to install
return packer.startup(function(use)
    -- packer can manage itself
    use("wbthomason/packer.nvim")   
    
    -- Interface
    use 'mhartington/oceanic-next' 

    use { 
        'nvim-lualine/lualine.nvim', 
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- A markdown preview
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })

    --  Displaying the indention levels
    use "lukas-reineke/indent-blankline.nvim"

    if packer_bootstrap then
        require("packer").sync()
    end
end)


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

" Telescope (fuzzy finder) 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }

" Interface
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhartington/oceanic-next'
Plug 'ryanoasis/vim-devicons'

" Git
" Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-fugitive'
--]]
