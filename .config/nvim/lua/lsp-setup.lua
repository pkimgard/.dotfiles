require("mason").setup()
require("mason-lspconfig").setup{
    ensure_installed = {"lua_ls"}
}
local cmp = require("cmp")
cmp.setup({
    sources = cmp.config.sources({
        {name="nvim_lsp"}
    })
})
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")
lspconfig.lua_ls.setup{
    capabilities = capabilities
}
