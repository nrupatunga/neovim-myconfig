local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

--these are my old vim plugins I still use
Plug 'christoomey/vim-tmux-navigator' -- switching between panes with tmux + vim
--Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs' -- pair the braces
Plug 'liuchengxu/vim-which-key' -- this is helpful when I want to find what leader key is mapped too
Plug 'mhinz/vim-startify' -- startify (im used to it)
Plug 'phaazon/hop.nvim' -- this is similar to easy motion
Plug 'rrethy/vim-illuminate' -- when you search, all the matching elements are highlighted
Plug 'scrooloose/nerdcommenter' -- commenting lines
Plug 'tpope/vim-surround' -- surround the selection with parentheses
Plug 'vim-scripts/mru.vim'  -- keeps list of most recently used files
Plug 'vim-scripts/taglist.vim'
Plug 'ludovicchabant/vim-gutentags'

-- popup implemented for neovim
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'

-- completion plugin
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip' -- snippet completion
Plug 'hrsh7th/cmp-nvim-lsp'

-- luasnip for completion
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

-- lsp
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'jose-elias-alvarez/null-ls.nvim'

vim.call('plug#end')
