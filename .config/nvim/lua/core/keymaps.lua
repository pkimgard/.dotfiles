local keymap = vim.keymap
-- vim/nvim
-- keymap.set("i", "<leader>jk", "<ESC>")
keymap.set("n", "<leader>h", "<cmd>noh<CR>")
keymap.set("n", "<leader>x", "<cmd>close<CR>")
keymap.set("n", "<leader>ll", "<cmd>set invrelativenumber<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

-- telescope
local builtin = require("telescope.builtin")
-- finding files
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>gf", builtin.git_files, {})
keymap.set("n", "<leader>bf", builtin.buffers, {})
keymap.set("n", "<leader>lf", builtin.live_grep, {})
-- file content
keymap.set("n", "<leader>sf", builtin.grep_string, {})
keymap.set("n", "<leader>cf", builtin.current_buffer_fuzzy_find, {})
keymap.set("n", "<leader>mf", builtin.marks, {})

-- vim-maximizer
keymap.set("n", "<leader>m", "<cmd>MaximizerToggle<CR>")

-- undotree
keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>")
