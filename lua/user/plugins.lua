local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	local output =
		vim.fn.system({ "git", "clone", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
	if vim.api.nvim_get_vvar("shell_error") ~= 0 then
		vim.api.nvim_err_writeln("Error cloning lazy.nvim repository...\n\n" .. output)
	end
	local oldcmdheight = vim.opt.cmdheight:get()
	vim.opt.cmdheight = 1
	vim.notify("Please wait while plugins are installed...")
	vim.api.nvim_create_autocmd("User", {
		once = true,
		pattern = "LazyInstall",
		callback = function()
			vim.cmd.bw()
			vim.opt.cmdheight = oldcmdheight
			vim.tbl_map(function(module)
				pcall(require, module)
			end, { "nvim-treesitter", "mason" })
			require("astronvim.utils").notify("Mason is installing packages if configured, check status with :Mason")
		end,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	--these are my old vim plugins I still use
	"christoomey/vim-tmux-navigator", -- switching between panes with tmux + vim
	"jiangmiao/auto-pairs", -- pair the braces
	"liuchengxu/vim-which-key", -- this is helpful when I want to find what leader key is mapped too
	"mhinz/vim-startify", -- startify (im used to it)
	--"rrethy/vim-illuminate", -- when you search, all the matching elements are highlighted
	"scrooloose/nerdcommenter", -- commenting lines
	"tpope/vim-surround", -- surround the selection with parentheses
	"vim-scripts/mru.vim", -- keeps list of most recently used files
	"wellle/context.vim",
	"phaazon/hop.nvim", -- this is similar to easy motion

	-- Fuzzy Finder (files, lsp, etc)
	{ "nvim-telescope/telescope.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } },
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
		cond = function()
			return vim.fn.executable("make") == 1
		end,
	},

	"nvim-telescope/telescope-media-files.nvim",
	"tom-anders/telescope-vim-bookmarks.nvim",

	-- completion plugin
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"saadparwaiz1/cmp_luasnip", -- snippet completion
	"hrsh7th/cmp-nvim-lsp", -- lsp completion

	-- luasnip for completion
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",
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

	--themes
	"lunarvim/darkplus.nvim",
	"Mofiqul/vscode.nvim",
	"catppuccin/nvim",
	"navarasu/onedark.nvim",

	-- NOTE: This is where your plugins related to LSP can be installed.
	--  The configuration is done below. Search for lspconfig to find it below.
	{
		-- LSP Configuration & Plugins
		"neovim/nvim-lspconfig",
		dependencies = {
			-- Automatically install LSPs to stdpath for neovim
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			-- Useful status updates for LSP
			-- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
			{ "j-hui/fidget.nvim", opts = {} },
		},
	},
	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"williamboman/mason.nvim",
			"jose-elias-alvarez/null-ls.nvim",
		},
	},

	"hrsh7th/cmp-nvim-lsp-signature-help",
	{
		-- Highlight, edit, and navigate code
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
			"nvim-treesitter/nvim-treesitter-refactor",
		},
		config = function()
			pcall(require("nvim-treesitter.install").update({ with_sync = true }))
		end,
	},
	{
		"SmiteshP/nvim-navbuddy",
		dependencies = {
			"neovim/nvim-lspconfig",
			"SmiteshP/nvim-navic",
			"MunifTanjim/nui.nvim",
		},
	},
	{ "akinsho/toggleterm.nvim", version = "*", config = true },
	{ "echasnovski/mini.nvim", version = "*" },
	{ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = true, priority = 1000 },
}

local opts = {}

require("lazy").setup(plugins, opts)
