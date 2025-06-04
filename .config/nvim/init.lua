#!/usr/bin/lua
local vimrc = vim.fn.stdpath("config") .. "/setup.vim"
vim.cmd.source(vimrc)
asdlfmelfm

require'lspconfig'.lua_ls.setup{}