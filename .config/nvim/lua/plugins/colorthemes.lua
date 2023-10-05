return {
    {
         "bluz71/vim-nightfly-colors",
	 name = "nightfly",
	 lazy = false,
	 priority = 1000,
	 config = function()
		 vim.cmd([[colorscheme nightfly]])
	 end,
    },
    {
    "Mofiqul/dracula.nvim",
    name = "dracula",
    lazy = true,
    },
}
