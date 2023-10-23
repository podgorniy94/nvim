-- Default options are not included
-- See: https://neovim.io/doc/user/vim_diff.html
-- [2] Defaults - *nvim-defaults*

--------------------------------------------------------------------------------
-- GENERAL SETTINGS
--------------------------------------------------------------------------------

local o = vim.opt
o.clipboard:prepend { 'unnamed', 'unnamedplus' }

-- INDENTION OPTIONS

o.expandtab = true    -- Заменяет символ табуляции на соответствующее количество пробелов
o.shiftround = false  -- Округляет отступ до величины, кратной 'sw', добавляемых командами > и <
o.shiftwidth = 4      -- Регулирует ширину отступов в пробелах, добавляемых командами > и <
o.smartindent=true    -- Доп. к опции ai автоматически выставляет отступы в «нужных» местах
o.softtabstop = 4     -- Количество пробелов, которыми символ табуляции отобр. при добавлении
o.tabstop = 4         -- Количество пробелов, которыми символ табуляции отображается в тексте

-- SEARCH OPTIONS

o.ignorecase = true -- Игнорирует регистр при поиске
o.smartcase = true  -- Переопределяет опцию 'iс', если поисковый запрос содержит заглавную букву

-- TEXT RENDERING OPTIONS

o.iskeyword:append { '-' }  -- Добавление дефиса в качестве части слова
o.list = true               -- Отображает невидимые символы
o.linebreak = true          -- Перенос строки по словам
o.scrolloff = 5             -- Количество строк, которые отображаются над и под курсором
o.cursorcolumn = false
o.cursorline = false
o.showbreak = '+++ '        -- Отображает авто. переносы строк (Vim wrap lines)
o.splitbelow = true         -- Горизонтальные окна открываются под текущим окном
o.wildmode = 'list:longest' -- Автодоплнение 'wildmenu' как в 'bash'
o.number = true             -- Абсолютная нумерация строк
o.mouse = 'a'

-- CODE FOLDING OPTIONS

o.foldmethod = 'indent'     -- Свёртка на основе уровней отступа
o.foldnestmax = 3           -- Максималный уровень вложености
o.foldenable = false        -- Отключение свёртки по умолчанию

-- MISCELLANEOUS OPTIONS

o.complete:append { 'kspell' }  -- Автозавершение слов
o.spelllang:append { 'ru' }
o.spellsuggest = 'best, 6'
o.swapfile = false
o.virtualedit = 'block'         -- Перемещение столбцов (rect) с использ. режима виз. блока
o.wildignore = '*.docx,*.jpg,*.png,*..df,*.pyc,*.exe,*.flv,*.img,*.xlsx'


-- Глобальная переменная 'vim' служит точкой входа для взаимодействия с Neovim API из Lua кода
-- Мета-аксессоры обертывают функции API: vim.api.nvim_set_option() = vim.opt.{option}
