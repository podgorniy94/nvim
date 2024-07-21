-- Shorten function name
local keymap = vim.keymap.set
-- local opts = { noremap = true, silent = true }

-- Remap comma as leader key
-- vim.g.mapleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- NORMAL
-- Better window navigation
keymap('n', '<C-h>', '<C-w>h')
keymap('n', '<C-j>', '<C-w>j')
keymap('n', '<C-k>', '<C-w>k')
keymap('n', '<C-l>', '<C-w>l')

-- Better paste
keymap('v', 'p', '"_dP')

-- VISUAL
-- Stay in indent mode
keymap('v', '<', '<gv')
keymap('v', '>', '>gv')

-- Move text up and down
keymap('x', 'J', ":move '>+1<CR>gv-gv")
keymap('x', 'K', ":move '<-2<CR>gv-gv")

-- Dismiss Noice Message
keymap("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", {desc = "Dismiss Noice Message"})

--------------------------------------

--Josean Martinez

-- Use jk to exit insert mode
keymap('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })

-- Clear Search Highlights
keymap('n', '<leader>h', ':nohl<CR>', { desc = 'Clear search highlights' })
-- Increment/Decrement Numbers
keymap('n', '<leader>+', '<C-a>', { desc = 'Increment number' })
keymap('n', '<leader>-', '<C-x>', { desc = 'Decrement number' })

-- Window Management
keymap('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
keymap('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' })
keymap('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' })
keymap('n', '<leader>sx', '<cmd>close<CR>', { desc = 'Close current split' })

keymap('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open new tab' })
keymap('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' })
keymap('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to next tab' })
keymap('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' })
keymap('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' })
