-- File Explorer Netrw

-- vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
-- vim.g.netrw_liststyle = 3

-- Change from left splitting to right splitting (netrw-v)"
vim.g.netrw_altv = 1

-- MAPPING

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local buf_set_keymap = vim.api.nvim_buf_set_keymap
local autocmd = vim.api.nvim_create_autocmd

-- Directory containing file ('head')
keymap('n', '<leader>dd', ':Lexplore %:p:h<CR>', { noremap = true})
keymap('n', '<leader>da', ':Lexplore<CR>', { noremap = true})

-- Window navigation on Netrw buffers
vim.api.nvim_create_augroup('netrw_mappings', { clear = true})
vim.api.nvim_create_autocmd('filetype', {
    group = 'netrw_mappings',
    pattern = 'netrw',
    callback = function()
        buf_set_keymap(0, 'n', '<C-h>', ':wincmd h<cr>', opts)
        buf_set_keymap(0, 'n', '<C-j>', ':wincmd j<cr>', opts)
        buf_set_keymap(0, 'n', '<C-k>', ':wincmd k<cr>', opts)
        buf_set_keymap(0, 'n', '<C-l>', ':wincmd l<cr>', opts)
    end
})

-- Create file without opening buffer
vim.cmd([[
function! CreateInPreview()
  let l:filename = input('please enter filename: ')
  execute 'silent !touch ' . b:netrw_curdir.'/'.l:filename
  redraw!
endfunction
]])

-- Netrw: create file using touch instead of opening a buffer
vim.cmd([[
function! Netrw_mappings()
  noremap <buffer>% :call CreateInPreview()<cr>
endfunction

augroup auto_commands
    autocmd filetype netrw call Netrw_mappings()
augroup END
]])

