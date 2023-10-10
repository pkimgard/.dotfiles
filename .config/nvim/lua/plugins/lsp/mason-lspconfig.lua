return {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    priority = 49,
    config = function()
        require("mason-lspconfig").setup{
            ensure_installed = {"lua_ls"}
        }
    end,
}
