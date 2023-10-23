--- COLORSHEME

local g = vim.g
local cmd = vim.cmd

if vim.fn.has('termguicolors') then
    vim.o.termguicolors = true
end

-- g.oceanic_next_terminal_bold = 1
-- g.oceanic_next_terminal_italic = 1

-- Set colorscheme with protected call
local status, _ = pcall(vim.cmd, "colorscheme OceanicNext")
if not status then
  print("Colorscheme not found!")
  return
end

-- Transparency
cmd('hi Normal guibg = NONE ctermbg = NONE') 
cmd('hi LineNr guibg = NONE ctermbg = NONE')
cmd('hi SignColumn guibg = NONE ctermbg = NONE')
cmd('hi  EndOfBuffer guibg = NONE ctermbg = NONE')
