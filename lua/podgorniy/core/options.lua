-- Default options are not included
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

--------------------------------------------------------------------------------
-- GENERAL SETTINGS
--------------------------------------------------------------------------------

local o = vim.opt

-- INDENTION OPTIONS

o.expandtab = true -- Заменяет символ табуляции на соответствующее количество пробелов
o.shiftround = false -- Округляет отступ до величины, кратной 'sw', добавляемых командами > и <
o.shiftwidth = 4 -- Регулирует ширину отступов в пробелах, добавляемых командами > и <
o.smartindent = true -- Доп. к опции ai автоматически выставляет отступы в «нужных» местах
o.softtabstop = 4 -- Количество пробелов, которыми символ табуляции отобр. при добавлении
o.tabstop = 4 -- Количество пробелов, которыми символ табуляции отображается в тексте

-- SEARCH OPTIONS

o.ignorecase = true -- Игнорирует регистр при поиске
o.smartcase = true -- Переопределяет опцию 'iс', если поисковый запрос содержит заглавную букву

-- TEXT RENDERING OPTIONS

o.iskeyword:append({ '-' }) -- Добавление дефиса в качестве части слова
o.list = true -- Отображает невидимые символы
o.linebreak = true -- Перенос строки по словам
o.scrolloff = 5 -- Количество строк, которые отображаются над и под курсором
o.cursorcolumn = false
o.cursorline = true
o.showbreak = '+++ ' -- Отображает авто. переносы строк (Vim wrap lines)
o.splitright = true -- Вертикальные окна открываются справа
o.splitbelow = true -- Горизонтальные окна открываются под текущим окном
-- o.wildmode = "list:longest" -- Автодоплнение 'wildmenu' как в 'bash'
o.number = true -- Абсолютная нумерация строк
o.mouse = 'a'

-- APPEARANCE
o.termguicolors = true
o.signcolumn = 'yes' -- отображать sign column без смещения текста

-- CODE FOLDING OPTIONS

o.foldmethod = 'indent' -- Сворачивание на основе уровней отступа
o.foldnestmax = 3 -- Максималный уровень вложености
o.foldenable = false -- Отключение сворачивания по умолчанию

-- MISCELLANEOUS OPTIONS

o.clipboard:prepend({ 'unnamed', 'unnamedplus' }) -- Буфер обмена как регистр по-умолчанию
o.complete:append({ 'kspell' }) -- Автозавершение слов
o.spelllang:append({ 'ru' })
o.spellsuggest = 'best, 6'
o.swapfile = false
o.virtualedit = 'block' -- Перемещение столбцов (rect) с использ. режима виз. блока
o.wildignore = '*.docx,*.jpg,*.png,*..df,*.pyc,*.exe,*.flv,*.img,*.xlsx'

-------------------------------------------------------------------------------
-- Autocommands
-- -------------------------------------------------------------------------------

local autocmd = vim.api.nvim_create_autocmd

-- Enable Spell Checker on certain files
autocmd('FileType', {
  pattern = { 'html', 'markdown', 'text' },
  callback = function()
    vim.opt_local.spell = true
  end,
})

-- Centering document vertically when entering insert mode

autocmd('InsertEnter', { command = 'norm zz' })

-------------------------------------------------------------------------------
-- NETRW FILE EXPLORER
--------------------------------------------------------------------------------

-- vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
-- vim.g.netrw_liststyle = 3

-- Change from left splitting to right splitting (netrw-v)"
vim.g.netrw_altv = 1

-- Module depreiceted requirement
vim.g.skip_ts_context_commentstring_module = true

-- MAPPING

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
local buf_set_keymap = vim.api.nvim_buf_set_keymap
local autocmd = vim.api.nvim_create_autocmd

-- Directory containing file ('head')
keymap('n', '<leader>dd', ':Lexplore %:p:h<CR>', { noremap = true })
keymap('n', '<leader>da', ':Lexplore<CR>', { noremap = true })

-- Window navigation on Netrw buffers
vim.api.nvim_create_augroup('netrw_mappings', { clear = true })
autocmd('filetype', {
  group = 'netrw_mappings',
  pattern = 'netrw',
  callback = function()
    buf_set_keymap(0, 'n', '<C-h>', ':wincmd h<cr>', opts)
    buf_set_keymap(0, 'n', '<C-j>', ':wincmd j<cr>', opts)
    buf_set_keymap(0, 'n', '<C-k>', ':wincmd k<cr>', opts)
    buf_set_keymap(0, 'n', '<C-l>', ':wincmd l<cr>', opts)
  end,
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

-- DEFAULTS

--[[
-- :h nvim-defaults
cmd('filetype plugin indent on')    -- Включает правила отступов, зависящие от типа файла
cmd('syntax enable')                -- Включает подстветку синтаксиса

o.autoindent = true                 -- Новые строки наследуют отступ предыдущих строк
o.autoread = true                   -- Автоматически 'reread', если файл был измененен вне Vim
o.background = 'dark'               -- Фон
o.backspace = 'indent,eol,start'    -- Позволяет делать возврат через автоотступы, eol, 'старт'
o.compatible = false                -- Отключение совместимости с Vi
o.display = 'lastline'              -- Отображает последнюю строку, насколько это возможно
o.formatoptions:append {'j'}        -- Удаление символа комментария при соединении строк
o.hlsearch = true                   -- Выделяет поисковые совпадения
o.incsearch = true                  -- Инкрементальный поиск, показывающий частичные совпадения
o.laststatus=2                      -- Всегда отображать статус бар
o.ruler = true                      -- Показывать позицию курсора
o.showcmd = true                    -- Показывать незавершенные команды 'statusbar'
o.smarttab = true                   -- Добовляет 'tabstop' количество пробелов при нажатии клавиши 'tab'
o.wildmenu = true                   -- Показывать меню автодоплнения 'tab'
]]
