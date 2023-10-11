local cmp = require("cmp")
cmp.setup({
    snippet = {
        expand = function (args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["C-n"] = cmp.mapping.select_next_item(),
        ["C-p"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm(),
        ["C-e"] = cmp.mapping.abort(),
        ["C-u"] = cmp.mapping.scroll_docs(-4),
        ["C-d"] = cmp.mapping.scroll_docs(4),
    }),
    sources = cmp.config.sources({
        {name="nvim_lsp"},
        }, {
        {name="buffer"},
    }),
})
cmp.setup.cmdline({"/","?"}, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        {name="buffer"}
    }
})
cmp.setup.cmdline(":", {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        {name="path"}
    }, {
        {name="cmdline"}
    })
})
local capabilities = require("cmp_nvim_lsp").default_capabilities()
