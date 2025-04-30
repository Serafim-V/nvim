local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Move selected line
vim.keymap.set({ "n" }, "∆", ":move .+1<CR>", default_opts)
vim.keymap.set({ "n" }, "˚", ":move .-2<CR>", default_opts)
vim.keymap.set({ "v" }, "∆", ":move '>+1<CR>gv=gv", default_opts)
vim.keymap.set({ "v" }, "˚", ":move '<-2<CR>gv=gv", default_opts)

-- Save file
keymap("n", "<leader>s", ":w<CR>", default_opts)
keymap("n", "<leader>q", ":q<CR>", default_opts)
keymap("n", "|", ":vs<CR>", default_opts)
-- Close buffer
keymap("n", "<leader>w", ":bp | bd #<CR>", default_opts)
keymap("n", "<leader>kw", ":%bd<CR>", default_opts)

-- Doublicate line
vim.keymap.set({ "n", "v" }, "", ":t .-1<CR>", default_opts)
vim.keymap.set({ "n", "v" }, "Ô", ":t .<CR>", default_opts)

-- Resizing panes
keymap("n", "<Left>", ":vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", ":vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", ":resize -1<CR>", default_opts)
keymap("n", "<Down>", ":resize +1<CR>", default_opts)

-- Switch buffer
keymap("n", "<C-h>", "<C-w>h", default_opts)
keymap("n", "<C-l>", "<C-w>l", default_opts)
keymap("n", "<C-j>", "<C-w>j", default_opts)
keymap("n", "<C-k>", "<C-w>k", default_opts)
keymap("n", "<Tab>", ":bnext<CR>", default_opts)
keymap("n", "<S-Tab>", ":bprevious<CR>", default_opts)
