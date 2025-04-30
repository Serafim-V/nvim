return {
  "glepnir/lspsaga.nvim",
  event = "LspAttach",
  config = function()
    require("plugins.lspsaga.config")
  end,
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
    { "nvim-treesitter/nvim-treesitter" },
  },
}
