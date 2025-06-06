#!/usr/bin/lua
local vimrc = vim.fn.stdpath("config") .. "/setup.vim"
vim.cmd.source(vimrc)


local lsp_config = require 'lspconfig'
lsp_config.lua_ls.setup{}

