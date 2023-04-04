local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Move selected line
keymap("n", "∆", ":move .+1<CR>", default_opts)
keymap("n", "˚", ":move .-2<CR>", default_opts)

-- Save file
keymap("n", "<leader>s", ":w<CR>", default_opts)
-- Close buffer
keymap("n", "<leader>w", ":bd<CR>", default_opts)
keymap("n", "<leader>kw", ":bd<CR>", default_opts)

-- Doublicate line
keymap("n", "<leader>j", ":t .<CR>", default_opts)
keymap("n", "<leader>k", ":t .-1<CR>", default_opts)

-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)

-- Switch buffer
keymap("n", "<S-h>", ":bprevious<CR>", default_opts)
keymap("n", "<S-l>", ":bnext<CR>", default_opts)
keymap("n", "<Tab>", ":+tabnext<CR>", default_opts)
