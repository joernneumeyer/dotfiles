#!/usr/bin/lua
local vimrc = vim.fn.stdpath("config") .. "/setup.vim"
vim.cmd.source(vimrc)

local lsp_config = require 'lspconfig'
lsp_config.lua_ls.setup{}

local autoclose = require 'autoclose'
autoclose.setup()

local pid = vim.fn.getpid()

lsp_config.omnisharp.setup{
    cmd = { '$HOME/Apps/onmisharp/onmisharp/OmniSharp.exe' , "--languageserver" , "--hostPID", tostring(pid) }
    -- Additional configuration can be added here
}


