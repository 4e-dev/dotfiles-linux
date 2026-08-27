-- Open netrw file explorer
vim.keymap.set("n", "<leader>ef", vim.cmd.Ex)

-- Strip trailing whitespace
vim.keymap.set("n", "<leader>ws", function()
  vim.cmd([[%s/\s\+$//e]])
  vim.cmd("nohlsearch")
end)

-- Keep yank register after pasting over text
vim.keymap.set("v", "<leader>p", "\"_dP")
