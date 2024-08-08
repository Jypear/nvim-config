local opt = vim.opt -- sets vim as variable - more concise

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs/indents
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- apearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"
opt.clipboard:append("unnamedplus")

-- splits
opt.splitright = true
opt.splitbelow = true


-- colorcolumn
opt.colorcolumn = "120"
