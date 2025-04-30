local conform = require("conform")

local format_options = {
  lsp_fallback = true,
  async = false,
  timeout_ms = 500,
}

conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    -- python = { "isort", "black" },
    -- Use a sub-list to run only the first available formatter
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
  },
  format_on_save = format_options,
})

vim.keymap.set({ "n", "v" }, "<leader>mp", function()
  conform.format(format_options)
end, { desc = "Format file or range (in visual mode)" })
