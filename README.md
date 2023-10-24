#### Neovim Setup :computer:

[Setup Guides](#setup-guides)  
[Plugins](#plugins)  
[Genetal Notes](#general-notes)  
[Options Notes](#options-notes)  
[Lua Notes](#lua-notes)

#### Plugins :books:

**Plugin Manager**  
[folke/lazy.nvim](https://github.com/folke/lazy.nvim) - Amazing plugin manager

**Dependency For Other Plugins**  
[nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

**Navigating Between Neovim Windows and Tmux**
<!-- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) -->
[vim-maximizer](https://github.com/szw/vim-maximizer) - Maximizes and restore current window

**Essentials**  
[tpope/vim-surround](https://github.com/tpope/vim-surround) - manipulate surroundings with "ys", "ds", and "cs"  
[vim-scripts/ReplaceWithRegister](https://github.com/vim-scripts/ReplaceWithRegister) - replace things with register with "gr"

**Interface**  
[mhartington/oceanic-next](https://github.com/mhartington/oceanic-next) - colorscheme  
[nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status Line  
[kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - VS Code Like Icons
<!-- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - Buffer Line -->

**Fuzzy Finder**  
[nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Dependency for better performance  
[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder  
<!-- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim) - select/input ui improvement -->

**Autocompletion**  
[fhrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion plugin  
[hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - Completion source for text in current buffer  
[hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path)  - Completion source for file system paths  
[onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim) - Vs Code Like Icons for autocompletion

**Snippets**  
[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine  
[rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Useful snippets for different languages  
[saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) Completion source for snippet autocomplete

**Comments**  
[numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - toggle comments with "gc"  
<!-- [JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) - Requires treesitter -->

**Markdown Preview**  
[iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

---

#### Managing & Installing Language Servers, Linters & Formatters
[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)

**LSP Configuration**  
[williamboman/mason-lspconfig.nvim](williamboman/mason-lspconfig.nvim) - Bridges gap b/w mason & lspconfig  
[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Easy way to configure lsp servers  
[hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Smart code autocompletion with lsp

**Formatting & Linting**
<!-- stevearc/conform.nvim - Easy way to configure formatters -->
<!-- mfussenegger/nvim-lint - Easy way to configure linters -->
[WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) - Auto install linters & formatters on startup

---

#### General Notes :information_desk_person: 

[Learn Vim the Smart Way](https://learnvim.irian.to/)  
[Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/)

**Commands**

```vim
:help config
:echo $MYVIMRC
:checkhealth

" Python support
" pip install pynvim 
```

**Support for copy/paste for X11**  
xsel / xclip

**LSP**  
Neovim has built-in LSP (Language Server Protocol) client.  
Manual, triggered completion is provided by Nvim's builtin `omnifunc`.

**Font**  
[ryanoasis/nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

---

#### Options Notes :mag_right:
**Performance**

```vim
set lazyredraw
" This setting prevents Vim from redrawing the screen for each iteration of the macro.

set complete-=i
" Limit the files searched for auto-completes.
" i: Scan the current and included files.
```

**Text Rendering Options**

```vim
set display+=lastline
" Vim will try to show as much as possible of the last line in the window (rather than
" a column of '@', which is the default behavior). The line uses `+=` to avoid overriding
" the setting if you have set it to truncate, which will show the “@@@” in the first columns
" instead.

set linebreak
" This will cause wrap to only wrap at the characters in the breakat setting 
" (`^I!@*-+;:,./?`), which defaults to space, tab, and small set of punctuation characters.

set nrformats-=octal
" Number formats helps define what kind of format will be considered as number for Vim.
" For instance, the octal option will cause 007 to be incremented to 010 due to using base 8.

set sidescrolloff = 5
" The minimal number of columns to scroll horizontally. Used only when the 'wrap' option
" is off and the cursor is moved off of the screen (help.txt).

set wrap
" By default this will wrap at the first character that won't fit in the window.
" This means it will wrap in the middle of a word if that's where the window boundary lies.

set textwidth = 80
" Re-format text/code to wrap to 80-characters (:h formatting).
```

**User Interface Options**

```vim
set laststatus=2
" If the value of 'laststatus' is 1, then Vim’s status bar will only show if there are 2
" or more Vim windows open.The status bar will always be there by setting the value to 2,
" even if you only open the 1 Vim window.
```

**Miscellaneous Option**

```vim
set backspace
" When indent is included, you can backspace over indentation from autoindent.
" When eol is included, you can backspace over an end of line (eol) character.
" When start is included, you can backspace past the position where you started Insert mode.

set backup
" :help backup-table

set clipboard = unnamed, unnamedplus
" On Mac OS X and Windows, the * and + registers both point to the system clipboard.
" On Linux, you have essentially two clipboards: one is pretty much the same as in the 
" other OSes, the other is the 'selection' clipboard (mapped to register * in Vim).

set nomodelines
" Modelines allow you to set variables specific to a file.
" By default, the first and last five lines are read by vim for variable settings.
```

**Defaults**

```Lua
-- :h nvim-defaults

cmd('filetype plugin indent on')    -- Включает правила отступов, зависящие от типа файла
cmd('syntax enable')                -- Включает подстветку синтаксиса

o.autoindent = true                 -- Новые строки наследуют отступ предыдущих строк  
o.autoread = true                   -- Автоматически 'reread', если файл был измененен вне Vim  
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
```

---

#### Lua Notes :bulb:

**Boolean toggle**

```Lua
-- vimL:
-- set number

vim.opt.number = true
```

**Setting an array of values**

```Lua
-- vimL:
-- set wildignore=*.o,*.a,__pycache__

vim.opt.wildignore = '*.o,*.a,__pycache__'
vim.opt.wildignore = { '*.o', '*.a', '__pycache__' }
```

**Setting a map of values**

```Lua
-- vimL:
-- set listchars=space:_,tab:>~

vim.opt.listchars = { space = '_', tab = '>~' }

--set {option}+={flags}
vim.opt.wildignore = vim.opt.wildignore + { "*.pyc", "node_modules" }`  
vim.opt.wildignore:append { "*.pyc", "node_modules" }`

-- set {option}^={flags}
vim.opt.wildignore = vim.opt.wildignore ^ { "new_first_value" }
vim.opt.wildignore:prepend { "new_first_value" }

-- set {option}-={flags}
vim.opt.wildignore = vim.opt.wildignore - { "node_modules" }
vim.opt.wildignore:remove { "node_modules" }
```

---

#### Setup Guides :grey_question:

- [Complete Guide](https://youtu.be/vdn_pKJUda8?si=A6tykSv-ll-bYXAs)
- [How To Use lazy.nvim](https://youtu.be/6mxWayq-s9I?si=iaHEX00Wv0OG4_M8)
- [Setup LSP](https://youtu.be/NL8D8EkphUw?si=bVEiu1z7_y0A3Flf)
- [Setup Linting And Formating](https://youtu.be/ybUE4D80XSk?si=o02_8eVKBTav9-an)
- [Setup Treesitter](https://youtu.be/CEMPq_r8UYQ?si=LgcXAz6xV9KsmvdT)

