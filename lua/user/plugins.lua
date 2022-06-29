local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

--these are my old vim plugins I still use
Plug 'christoomey/vim-tmux-navigator' -- switching between panes with tmux + vim
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs' -- pair the braces
Plug 'liuchengxu/vim-which-key' -- this is helpful when I want to find what leader key is mapped too
Plug 'mhinz/vim-startify' -- startify (im used to it)
Plug 'phaazon/hop.nvim' -- this is similar to easy motion
Plug 'rrethy/vim-illuminate' -- when you search, all the matching elements are highlighted
Plug 'scrooloose/nerdcommenter' -- commenting lines
Plug 'tpope/vim-surround' -- surround the selection with parentheses
Plug 'vim-scripts/mru.vim'  -- keeps list of most recently used files

-- popup implemented for neovim
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'

-- completion plugin
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip' -- snippet completion

-- luasnip for completion
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'

--Plug 'SirVer/ultisnips'
--Plug 'quangnguyen30192/cmp-nvim-ultisnips'

vim.call('plug#end')

-- hop.nvim setup
require'hop'.setup()
