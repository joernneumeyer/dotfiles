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

call plug#begin("~/.vim/plugged")
 " Plugin Section
 Plug 'dracula/vim'
 Plug 'ryanoasis/vim-devicons'
 Plug 'SirVer/ultisnips'
 Plug 'honza/vim-snippets'
 Plug 'scrooloose/nerdtree'
 Plug 'preservim/nerdcommenter'
 Plug 'mhinz/vim-startify'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'neovim/nvim-lspconfig'
call plug#end()
