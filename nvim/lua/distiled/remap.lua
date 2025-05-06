vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("i", "<A-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-k>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-l>", "<Right>", { noremap = true, silent = true })

vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true })

vim.keymap.set("t", "<C-x>", [[<C-\><C-n>]], { noremap = true })
vim.keymap.set("t", "jk", [[<C-\><C-n>]], { noremap = true })
vim.keymap.set('t', '<A-h>', [[<Cmd>wincmd h<CR>]], { noremap = true })
vim.keymap.set('t', '<A-j>', [[<Cmd>wincmd j<CR>]], { noremap = true })
vim.keymap.set('t', '<A-k>', [[<Cmd>wincmd k<CR>]], { noremap = true })
vim.keymap.set('t', '<A-l>', [[<Cmd>wincmd l<CR>]], { noremap = true })
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], { noremap = true })

vim.keymap.set("n", "<leader>v", vim.cmd.vsplit, { silent = true });
vim.keymap.set("n", "<leader>h", vim.cmd.split, { silent = true });

vim.keymap.set("n", "<C-c>", "<Cmd>%y+<CR>");
