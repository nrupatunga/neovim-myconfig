local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	--these are my old vim plugins I still use
	"christoomey/vim-tmux-navigator", -- switching between panes with tmux + vim
	"jiangmiao/auto-pairs", -- pair the braces
	"liuchengxu/vim-which-key",-- this is helpful when I want to find what leader key is mapped too
	"mhinz/vim-startify", -- startify (im used to it)
	"rrethy/vim-illuminate", -- when you search, all the matching elements are highlighted
	"scrooloose/nerdcommenter", -- commenting lines
	"tpope/vim-surround", -- surround the selection with parentheses
	"vim-scripts/mru.vim", -- keeps list of most recently used files
	"wellle/context.vim",
	"phaazon/hop.nvim", -- this is similar to easy motion
	"nvim-lua/popup.nvim", -- popup implemented for neovim
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	"nvim-telescope/telescope-media-files.nvim",
	"nvim-telescope/telescope-fzf-native.nvim",
	"tom-anders/telescope-vim-bookmarks.nvim",
	-- completion plugin
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip", -- snippet completion
	"hrsh7th/cmp-nvim-lsp",
	-- luasnip for completion
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
	-- lsp
	"neovim/nvim-lspconfig",
	"williamboman/nvim-lsp-installer",
	"nvim-treesitter/nvim-treesitter",
	"jose-elias-alvarez/null-ls.nvim",
	"hrsh7th/cmp-nvim-lsp-signature-help",
	-- nvim tree
	"kyazdani42/nvim-web-devicons",
	"kyazdani42/nvim-tree.lua",
	"nvim-lualine/lualine.nvim",
	-- improve startup time neovim
	"lewis6991/impatient.nvim",
	-- git
	"lewis6991/gitsigns.nvim",
	-- smooth scroll
	"karb94/neoscroll.nvim",
	"folke/trouble.nvim",
	--markdown preview plugin
	"iamcco/markdown-preview.nvim",
	"hynek/vim-python-pep8-indent",

	-- search plugin
	"z0mbix/vim-shfmt",
	"smjonas/inc-rename.nvim",
	"theprimeagen/harpoon",
	--org mode
	"nvim-neorg/neorg",
	"nvim-neorg/neorg-telescope",

	--chatgpt
	"MunifTanjim/nui.nvim",
	"jackMort/ChatGPT.nvim",
}

local opts = {}

require("lazy").setup(plugins, opts)
