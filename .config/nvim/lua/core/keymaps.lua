local keymap = vim.keymap

-- vim/nvim
keymap.set("i", "<leader>jk", "<ESC>")
keymap.set("n", "<leader>h", "<cmd>noh<CR>")
keymap.set("n", "<leader>x", "<cmd>close<CR>")
keymap.set("n", "<leader>ll", "<cmd>set invrelativenumber<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- vim-maximizer
keymap.set("n", "<leader>m", "<cmd>MaximizerToggle<CR>")
