return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      -- api_key_cmd = "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",
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
