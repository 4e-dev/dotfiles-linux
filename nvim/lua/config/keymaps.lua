-- open netrw file explorer
vim.keymap.set("n", "<leader>ef", vim.cmd.Ex)

-- strip trailing whitespace
vim.keymap.set("n", "<leader>ws", function()
  vim.cmd([[%s/\s\+$//e]])
  vim.cmd("nohlsearch")
end)
