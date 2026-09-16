return {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    config = function()
        local capabilities = require("blink.cmp").get_lsp_capabilities()

        -- add language servers here
        vim.lsp.config("clangd", { capabilities = capabilities })
        vim.lsp.config("glsl_analyzer", { capabilities = capabilities })
        vim.lsp.config("lua-language-server", { capabilities = capabilities })

        vim.lsp.enable({
            "clangd",
            "glsl_analyzer",
            "lua-language-server",
        })

        -- lsp keymaps
        vim.keymap.set("n", "gd", vim.lsp.buf.definition)
        vim.keymap.set("n", "gr", vim.lsp.buf.references)
        vim.keymap.set("n", "K", vim.lsp.buf.hover)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
    end,
}
