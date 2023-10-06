local opt = vim.opt

-- visibility
opt.termguicolors = true
opt.listchars = {eol="$", trail="~", multispace="."}
opt.list = true
opt.colorcolumn = "120"
opt.wrap = false
opt.cursorline = true
opt.signcolumn = "yes"
opt.number = true
opt.relativenumber = true

-- indentation
opt.tabstop = 4
opt.expandtab = true
opt.shiftwidth = 4
opt.autoindent = true

-- searching
opt.ignorecase = true
opt.smartcase = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- window management
opt.splitright = true
opt.splitbelow = true
