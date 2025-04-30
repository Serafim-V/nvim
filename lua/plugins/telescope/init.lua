return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-file-browser.nvim",
    "nvim-telescope/telescope-project.nvim",
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("plugins.telescope.config")
  end,
}
