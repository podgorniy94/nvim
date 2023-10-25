local opts = { noremap = true, silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap comma as leader key
-- Keymap is transfered to lua/podgorniy/lazy.lua
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
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Delete a single character without copy
keymap("n", "x", '"_x', opts)

-- Increment and Decrement numbers
keymap("n", "<leader>+", "<C-a>", opts)
keymap("n", "<leader>-", "<C-x>", opts)

-- Window management
keymap("n", "<leader>sv", "<C-w>v", opts) -- Split window vertically
keymap("n", "<leader>sh", "<C-w>s", opts) -- Split window horizontally
keymap("n", "<leader>se", "<C-w>=", opts) --  Make splits equal size
keymap("n", "<leader>sx", "<cmd>close<CR>", opts) -- Close current split

keymap("n", "<leader>to", "<cmd>tabnew<CR>", opts) -- Open new tab
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", opts) -- Close current tab
keymap("n", "<leader>tn", "<cmd>tabn<CR>", opts) -- Go to next tab
keymap("n", "<leader>tp", "<cmd>tabp<CR>", opts) -- Go to previous tab
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", opts) --  Move current buffer to new tab


-- VISUAL
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
