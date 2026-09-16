return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim", },
    config = function()

        local telescope = require("telescope")
        telescope.setup({})

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>ff", builtin.find_files)   -- find via file name
        vim.keymap.set("n", "<leader>fg", builtin.live_grep)    -- find via grep
        vim.keymap.set("n", "<leader>fb", builtin.buffers)      -- find via active buffers
        vim.keymap.set("n", "<leader>fh", builtin.help_tags)    -- find help
        vim.keymap.set("n", "<leader>fr", builtin.oldfiles)     -- recent files
        vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols) -- document symbols

    end,
}
