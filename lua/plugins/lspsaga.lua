local status, saga = pcall(require, "lspsaga")
if not status then
  return
end
saga.setup({})
local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>j", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "<leader>lK", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "<leader>lR", "<Cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set("n", "<leader>lr", "<Cmd>Lspsaga rename<CR>", opts)
vim.keymap.set("n", "<leader>ld", "<Cmd>Lspsaga goto_definition<CR>", opts)
vim.keymap.set("n", "<leader>lt", "<Cmd>Lspsaga goto_type_definition<CR>", opts)
vim.keymap.set("n", "<leader>la", "<Cmd>Lspsaga code_action<CR>", opts)
