require("mason").setup()
local handlers = {
    function (server_name)
        require("lspconfig")[server_name].setup{
            capabilities = capabilities
        }
    end,
    ["lua_ls"] = function ()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = {"vim"}
                    }
                }
            }
        }
    end,
}
require("mason-lspconfig").setup{
    ensure_installed = {
        "lua_ls"
    },
    handlers = handlers,
}
