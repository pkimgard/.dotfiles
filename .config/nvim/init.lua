-- This combo lists current line on current line and all other are relative
vim.o.number = true
vim.o.relativenumber = true
vim.keymap.set('n', '<C-l><C-l>', '<cmd>set invrelativenumber<CR>')

-- tabstop: length of tab,
-- expandtab: use spaces instead,
-- shiftwidth: length of indent.
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.autoindent = true

-- show hidden chars
vim.o.list = true

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
