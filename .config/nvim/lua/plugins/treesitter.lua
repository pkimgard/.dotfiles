return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
            "c",
            "lua",
            "vim",
            "vimdoc",
            "query",
            "python"
        },
        auto_install = true,
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
