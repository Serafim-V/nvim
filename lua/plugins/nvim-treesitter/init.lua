return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  config = function()
    require("plugins.nvim-treesitter.config")
  end,
}
