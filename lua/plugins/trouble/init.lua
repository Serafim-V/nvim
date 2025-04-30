return {
  "folke/trouble.nvim",
  config = function()
    require("plugins.trouble.config")
  end,
  requires = "nvim-tree/nvim-web-devicons",
}
