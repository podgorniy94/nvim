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

require("lazy").setup({ { import = "podgorniy.plugins" }, { import = "podgorniy.plugins.lsp" } }, {
  install = {
    -- try to load one of these colorschemes when starting an installation during startup
    colorscheme = { "OceanicNext" },
  },
  checker = {
    enabled = true, -- automatically check for plugin updates
    notify = false, -- get a notification when new updates are found
  },
  -- automatically check for config file changes and reload the ui
  change_detection = {
    notify = false, -- get a notification when changes are found
  },
})
