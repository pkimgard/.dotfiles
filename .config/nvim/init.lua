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

    use 'Mofiqul/dracula.nvim'
end)
local vim = vim
local cmd = vim.cmd
local keymap = vim.keymap
local opt = vim.opt

cmd.colorscheme 'dracula'

local builtin = require("telescope.builtin")

require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python" },
    auto_install = true,
    highlight = { enable = true },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "gnc",
            scope_incremental = "grc",
            node_decremental = "grm",
        }
    }
}

vim.g.mapleader = " "
keymap.set("n", "<leader>pv", cmd.Ex)
keymap.set("n", "<C-l><C-l>", '<cmd>set invrelativenumber<CR>')
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>gf", builtin.git_files, {})
keymap.set("n", "<leader>bf", builtin.buffers, {})

opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.expandtab = true
opt.shiftwidth = 4
opt.autoindent = true
opt.listchars = { eol = "$", trail = "~", multispace = "." }
opt.list = true
opt.foldmethod= "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = false


--keymap.set("n", "", builtin.live_grep)
keymap.set("n", "<leader>lg", builtin.live_grep)
keymap.set("n", "<leader>gs", builtin.grep_string)
-- keymap.set("n", "", builtin.live_grep)
-- keymap.set("n", "", builtin.live_grep)
-- keymap.set("n", "", builtin.live_grep)
