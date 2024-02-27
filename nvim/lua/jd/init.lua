require("jd.remap")
require("jd.lazy")
require("jd.plugins")

vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.o.smartindent = true
vim.o.incsearch = true
vim.o.termguicolors = true
vim.o.scrolloff = 8

vim.cmd[[colorscheme tokyonight]]
