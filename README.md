### Neovim Setup / Tables of Contents :computer:

1. [Setup Guides](#setup-guides-grey_question)
2. [Plugins](#plugins-books)
3. [General Notes](#general-notes-information_desk_person)
4. [Options Notes](#options-notes-mag_right)
5. [Lua Notes](#lua-notes-bulb)

### Plugins :books:

**Plugin Manager**  
[folke/lazy.nvim](https://github.com/folke/lazy.nvim) - plugin manager

**Dependency For Other Plugins**  
[nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim) - Useful lua functions other plugins use

**Essentials**  
[kylechui/nvim-surround](https://github.com/kylechui/nvim-surround) - manipulate surroundings with "ys", "ds", and "cs"  
[christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Navigating Between Neovim Windows and Tmux  
[vim-maximizer](https://github.com/szw/vim-maximizer) - Maximizes and restore current window  
[lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Show line modifications on left hand side for Git  
[rmagatti/auto-session](https://github.com/rmagatti/auto-session) - Session Manager

**Interface**  
[mhartington/oceanic-next](https://github.com/mhartington/oceanic-next) - Colorscheme  
[nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Status Line  
[kyazdani42/nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - VS Code Like Icons  
[akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim) - Buffer Line  
[goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) - Neovim Greeter  
[lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) - Indentation guides  
[echasnovski/mini.indetscope](https://github.com/echasnovski/mini.indentscope) - active indent guide and indent text objects--
[folke/noice.nvim](https://github.com/folke/noice.nvim) - replaces the UI for messages, cmdline and the popupmenu

**Fuzzy Finder**  
[nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim) - Dependency for better performance  
[nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy Finder  
[stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim) - select/input ui improvement

**Keymap Suggestions**  
[folke/which-key.nvim](https://github.com/folke/which-key.nvim)

**Autocompletion**  
[fhrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Completion plugin  
[hrsh7th/cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - Completion source for text in current buffer  
[hrsh7th/cmp-path](https://github.com/hrsh7th/cmp-path) - Completion source for file system paths  
[hrsh7th/cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) - Completion source for vim's cmdline

[onsails/lspkind.nvim](https://github.com/onsails/lspkind.nvim) - Vs Code Like Icons for autocompletion  
[windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Use treesitter to autoclose and autorename html tag

**Snippets**  
[L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet engine  
[rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets) - Useful snippets for different languages  
[saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip) Completion source for snippet autocomplete

**Comments**  
[numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - toggle comments with "gc"  
[JoosepAlviste/nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring) - Requires treesitter  
[folke/todo-comments.nvim](https://github.com/folke/todo-comments.nvim) - highlight/search for comments like todo/hack/bug

**Treesitter Syntax Highlighting, Autoclosing & Text Objects**  
[nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Treesitter configuration  
[windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autoclose brackets, parens, quotes, etc...  
[windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) - Autoclose tags

**Markdown Preview**  
[iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

**Managing & Installing Language Servers, Linters & Formatters**  
[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)

**LSP Configuration**  
[williamboman/mason-lspconfig.nvim](williamboman/mason-lspconfig.nvim) - Bridges gap b/w mason & lspconfig  
[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Easy way to configure lsp servers  
[hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) - Smart code autocompletion with lsp

**Trouble.nvim**  
[folke/trouble.nvim](https://github.com/folke/trouble.nvim) - nice way to see diagnostics and other stuff

**Formatting & Linting**  
[stevearc/conform.nvim](https://github.com/stevearc/conform.nvim) - Easy way to configure formatters  
[mfussenegger/nvim-lint](https://github.com/mfussenegger/nvim-lint) - Easy way to configure linters  
[WhoIsSethDaniel/mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) - Auto install linters & formatters on startup

**_Unplugged plugins_**  
[nvim-treesitter/nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) - Treesitter configuration  
[norcali/colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) - Color Highlighter  
[nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) - File Explorer  
[ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon) - Marking Files With Prime's Harpoon  
[gbprod/substitute.nvim](https://github.com/gbprod/substitute.nvim) - replace things with register with "s" and "S"  
[kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) - Use lazygit within Neovim

---

### General Notes :information_desk_person:

[Learn Vim the Smart Way](https://learnvim.irian.to/)  
[Learn Vimscript the Hard Way](https://learnvimscriptthehardway.stevelosh.com/)
[Complete Guide](https://youtu.be/6pAG3BHurdM?si=oZEgrxNOrSmDOlxq)

**Commands**

```vim
:help config
:help events
:checkhealth

" Python support
" pip install pynvim
```

**LSP**  
Neovim has built-in LSP (Language Server Protocol) client.  
Manual, triggered completion is provided by Nvim's builtin `omnifunc`.

**Font**

```bash
# ryanoasis/nerd-fonts
brew tap homebrew/cask-fonts

# jetbrains
brew search font- | grep jetbrains
brew install --cask font-jetbrains-mono-nerd-font

# meslo
brew install font-meslo-lg-nerd-font
```

**How to set transparent background for iTerm2 in full screen mode on a Mac**

1. Open your iTerm2-> Choose Full screen window style in Open profiles -> Edit profiles -> Window -> Stylesettings.
2. Now un-check the Native full screen windows in General settings of iTerm2 (not the profile).
3. Now you can choose the level transparency in Open profiles -> Edit profiles -> Window settings.

Replaced by **WezTerm**

**Extra information**

File for configuring formatting for Lua: `.stylua.toml`  
**Python:**
- LSP: `pyright`  
- Linting: `pylint`  
- Formatting: `isort`, `black`

---

### Lua Notes :bulb:

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

> Глобальная переменная 'vim' служит точкой входа для взаимодействия с Neovim API из Lua кода.
> Мета-аксессоры обертывают функции API: `vim.api.nvim_set_option() = vim.opt.{option}`.

---

### Options Notes :mag_right:

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
