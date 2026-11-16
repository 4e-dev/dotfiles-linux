-- open netrw file explorer
vim.keymap.set('n', '<leader>ef', vim.cmd.Ex)

-- strip trailing whitespace
vim.keymap.set('n', '<leader>ws', function()
  vim.cmd([[%s/\s\+$//e]])
  vim.cmd('nohlsearch')
end)

-- swap between buffers
vim.keymap.set('n', '<C-h>', ':bprevious<CR>')
vim.keymap.set('n', '<C-l>', ':bnext<CR>')
