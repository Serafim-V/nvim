local status, saga = pcall(require, "lspsaga")
if not status then
	return
end
saga.setup({})
local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>j", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
vim.keymap.set("n", "gf", "<Cmd>Lspsaga lsp_finder<CR>", opts)
vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
