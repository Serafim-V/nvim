require("bufferline").setup {
  options = {
    offsets = {
      {
        filetype = "text",
        text = function()
          return vim.fn.getcwd()
        end,
        highlight = "Directory",
        text_align = "left"
      }
    },
  },
}
