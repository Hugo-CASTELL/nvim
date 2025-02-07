-- Leaders
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- VIM Settings
vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Loading plugins
require("config.lazy")

-- Loading keymaps
require("config.keymaps")
