local blankline = require("indent_blankline")

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

blankline.setup({})
