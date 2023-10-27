return { -- +
  "mhartington/oceanic-next",
  priority = 1000, -- load before all other plugins
  config = function()
    -- local g = vim.g
    local cmd = vim.cmd

    if vim.fn.has("termguicolors") then
      vim.o.termguicolors = true
    end

    -- g.oceanic_next_terminal_bold = 1
    -- g.oceanic_next_terminal_italic = 1

    -- Set colorscheme
    vim.cmd([[colorscheme OceanicNext]])

    -- Transparency
    cmd("hi Normal guibg = NONE ctermbg = NONE")
    cmd("hi LineNr guibg = NONE ctermbg = NONE")
    cmd("hi SignColumn guibg = NONE ctermbg = NONE")
    cmd("hi  EndOfBuffer guibg = NONE ctermbg = NONE")
  end,
}
