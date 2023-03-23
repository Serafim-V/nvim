local opt = vim.opt
local g = vim.g
	
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.number = true
opt.splitright = true
opt.splitbelow = true
opt.cursorline = true
opt.relativenumber = true

opt.termguicolors = true
opt.wrap = false
vim.cmd.colorscheme 'melange'
