local blankline = require("ibl")

vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")

blankline.setup({})
