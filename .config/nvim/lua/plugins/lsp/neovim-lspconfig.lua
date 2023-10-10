return {
    "neovim/nvim-lspconfig",
    lazy = false,
    priority = 48,
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup{}
    end,
}
