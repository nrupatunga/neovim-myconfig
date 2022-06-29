local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

--these are my old vim plugins I still use
Plug 'christoomey/vim-tmux-navigator' -- switching between panes with tmux + vim
Plug 'scrooloose/nerdcommenter' -- commenting lines
Plug 'liuchengxu/vim-which-key' -- this is helpful when I want to find what leader key is mapped too
Plug 'mhinz/vim-startify'
Plug 'phaazon/hop.nvim'
Plug 'jiangmiao/auto-pairs' -- pair the braces
Plug 'vim-scripts/mru.vim'  -- keeps list of most recently used files
Plug 'tpope/vim-surround' -- surround with parentheses
Plug 'rrethy/vim-illuminate'
Plug 'dense-analysis/ale'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

-- completion plugin
Plug 'hrsh7th/nvim-cmp'
Plug "hrsh7th/cmp-buffer"
Plug "hrsh7th/cmp-path"
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

vim.call('plug#end')

-- hop.nvim setup
require'hop'.setup()
