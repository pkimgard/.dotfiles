require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'AlexvZyl/nordic.nvim'
    use 'Mofiqul/dracula.nvim'
end)

vim.cmd.colorscheme 'dracula'

local builtin = require("telescope.builtin")

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python" },
    auto_install = true,
    highlight = { enable = true }
}

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-l><C-l>", '<cmd>set invrelativenumber<CR>')
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
vim.keymap.set("n", "<leader>bf", builtin.buffers, {})

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.opt.listchars = { eol = "$", trail = "~", multispace = "." }
vim.o.list = true

