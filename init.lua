vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.laststatus = 2



require("core.plugins")
require("core.keymaps")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true


require("core.nvim-tree")
require("core.treesitter")
require("core.toggleterm")
require("core.indentline")
require('lualine').setup()
require('nvim-web-devicons').setup()



vim.cmd.colorscheme "catppuccin"
