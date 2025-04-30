return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "f3fora/cmp-spell",
    {
      "L3MON4D3/LuaSnip",
      config = function()
        require("plugins.luasnip")
      end,
    },
    "rafamadriz/friendly-snippets",
    "honza/vim-snippets",
  },
  config = function()
    require("plugins.nvim-cmp.config")
  end,
}
