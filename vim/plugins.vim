call plug#begin(stdpath('data') . '/plugged')
Plug 'rakr/vim-one'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'github/copilot.vim'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'saghen/blink.cmp', { 'tag': 'v1.*' }
Plug 'stevearc/conform.nvim'
Plug 'ibhagwan/fzf-lua'
Plug 'stevearc/oil.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'folke/which-key.nvim'
call plug#end()
