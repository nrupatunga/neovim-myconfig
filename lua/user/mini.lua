-- No need to copy this inside `setup()`. Will be used automatically.

require("mini.splitjoin").setup({
	-- Module mappings. Use `''` (empty string) to disable one.
	-- Created for both Normal and Visual modes.
	mappings = {
		toggle = "gS",
		split = "",
		join = "",
	},
	-- Detection options: where split/join should be done
	detect = {
		-- Array of Lua patterns to detect region with arguments.
		-- Default: { '%b()', '%b[]', '%b{}' }
		brackets = nil,
		-- String Lua pattern defining argument separator
		separator = ",",
		-- Array of Lua patterns for sub-regions to exclude separators from.
		-- Enables correct detection in presence of nested brackets and quotes.
		-- Default: { '%b()', '%b[]', '%b{}', '%b""', "%b''" }
		exclude_regions = nil,
	},
	-- Split options
	split = {
		hooks_pre = {},
		hooks_post = {},
	},
	-- Join options
	join = {
		hooks_pre = {},
		hooks_post = {},
	},
})

require("mini.basics").setup({
	-- Options. Set to `false` to disable.
	options = {
		-- Basic options ('termguicolors', 'number', 'ignorecase', and many more)
		basic = true,
		-- Extra UI features ('winblend', 'cmdheight=0', ...)
		extra_ui = false,
		-- Presets for window borders ('single', 'double', ...)
		win_borders = "default",
	},
	-- Mappings. Set to `false` to disable.
	mappings = {
		-- Basic mappings (better 'jk', save with Ctrl+S, ...)
		basic = true,
		-- Prefix for mappings that toggle common options ('wrap', 'spell', ...).
		-- Supply empty string to not create these mappings.
		option_toggle_prefix = [[\]],
		-- Window navigation with <C-hjkl>, resize with <C-arrow>
		windows = false,
		-- Move cursor in Insert, Command, and Terminal mode with <M-hjkl>
		move_with_alt = false,
	},
	-- Autocommands. Set to `false` to disable
	autocommands = {
		-- Basic autocommands (highlight on yank, start Insert in terminal, ...)
		basic = true,
		-- Set 'relativenumber' only in linewise and blockwise Visual mode
		relnum_in_visual_mode = false,
	},
	-- Whether to disable showing non-error feedback
	silent = false,
})

--require("mini.tabline").setup({
	---- Whether to show file icons (requires 'nvim-tree/nvim-web-devicons')
	--show_icons = false,
	---- Whether to set Vim's settings for tabline (make it always shown and
	---- allow hidden buffers)
	--set_vim_settings = true,
	---- Where to show tabpage section in case of multiple vim tabpages.
	---- One of 'left', 'right', 'none'.
	--tabpage_section = "none",
--})

require("mini.move").setup( -- No need to copy this inside `setup()`. Will be used automatically.
	{
		-- Module mappings. Use `''` (empty string) to disable one.
		mappings = {
			-- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
			left = "<S-h>",
			right = "<S-l>",
			down = "<S-j>",
			up = "<S-k>",
			-- Move current line in Normal mode
			--line_left = "<M-h>",
			--line_right = "<M-l>",
			--line_down = "<M-j>",
			--line_up = "<M-k>",
		},
		-- Options which control moving behavior
		options = {
			-- Automatically reindent selection during linewise vertical move
			reindent_linewise = true,
		},
	}
)
