vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true		-- turns on relative numbers
opt.number = true			-- shows current line number

-- TABS & INDENTATION
-----------------------------------------------------------------
opt.tabstop = 2				              -- 2 spaces for tab (prettier)
opt.shiftwidth = 2			            -- 2 spaces for indentation (prettier)
opt.expandtab = true			          -- expand tab to spaces
opt.autoindent = true			          -- copy indent from current line when pressing Enter

opt.wrap = false			              -- long lines won't be split to the next line

-- SEACRH SETTINGS
-----------------------------------------------------------------
opt.ignorecase = true			          -- ignores case in searches
opt.smartcase = true			          -- mixed case typed searches are always case-sensitive
opt.cursorline = true               -- highlights current cursor line

-- COLORS
-----------------------------------------------------------------
opt.termguicolors = true
opt.background = "dark"             -- colorschemes are always made dark mode 
opt.signcolumn = "yes"              -- shows sign column so text does not shift

-- BACKSPACE
-----------------------------------------------------------------
opt.backspace = "indent,eol,start"  -- allows better backspace functionality

-- CLIPBOARD
-----------------------------------------------------------------
opt.clipboard:append("unnamedplus") -- system clipboard is default register

-- SPLIT WINDOWS
-----------------------------------------------------------------
opt.splitright = true               -- split vertical window to the right
opt.splitbelow = true               -- split horizontal window to the bottom


