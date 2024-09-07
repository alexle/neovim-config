vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")

vim.g.mapleader = " "

local map = vim.keymap.set
map('i', 'jj', '<Esc>', { noremap = true, silent = true })
map('n', '<leader>w', ':wa<CR>', { noremap = true, silent = true })
map('n', '<leader>q', ':wqa<CR>', { noremap = true, silent = true})
