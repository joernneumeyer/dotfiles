set number
set relativenumber
set mouse=a
set cursorline
set autoindent
filetype plugin indent on
set cc=80
set tabstop=4
set softtabstop=4
set expandtab
set hlsearch
set incsearch
set nocompatible
set showmatch

inoremap <expr> <TAB> pumvisible() ? "<C-y>" : "<TAB>"

call plug#begin("~/.vim/plugged")
 " Plugin Section
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'm4xshen/autoclose.nvim'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'neovim/nvim-lspconfig'
 Plug 'hrsh7th/cmp-nvim-lsp'
 Plug 'hrsh7th/cmp-buffer'
 Plug 'hrsh7th/cmp-path'
 Plug 'hrsh7th/cmp-cmdline'
 Plug 'hrsh7th/nvim-cmp'
call plug#end()
