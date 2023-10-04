local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig.tsserver.setup({
  capabilities = capabilities,
})
lspconfig.lua_ls.setup({
  capabilities = capabilities,
})
lspconfig.vimls.setup({
  capabilities = capabilities,
})
lspconfig.prismals.setup({
  capabilities = capabilities,
})

lspconfig.eslint.setup({
  capabilities = capabilities,
  enable = true,
  format = { enable = true }, -- this will enable formatting
  packageManager = "npm",
  autoFixOnSave = true,
  codeActionsOnSave = {
    mode = "all",
    rules = { "!debugger", "!no-only-tests/*" },
  },
  lintTask = {
    enable = true,
  },
})

local function withSplit(fn)
  return function()
    vim.cmd("vsplit")
    fn()
  end
end

vim.keymap.set("n", "<c-g>d", withSplit(vim.lsp.buf.definition), {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, {})
vim.keymap.set("n", "ga", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
