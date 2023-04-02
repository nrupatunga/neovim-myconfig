local function keymap(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.keymap.set(mode, lhs, rhs, options)
end

-- change leader to comma
vim.g.mapleader = ","

-- which key helps in getting the leader key mappings
keymap("n", "<leader>", ":WhichKey ','<CR>")

-- easier escape mode from home row keys
keymap("i", "jk", "<ESC>")

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Underline the current line with dashes
keymap("n", "<F7>", "yp<c-v>$r-")

-- From cursor to end, move to the next line
keymap("n", "K", "i<CR><ESC>")

-- Visual --
-- Better paste
keymap("v", "p", '"_dP')

-- Stay in indent mode
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Change the word to uppercase
keymap("v", "<C-u>", "<ESC>bvwUea")
keymap("v", "<C-b>", "<ESC>bvlUea")

-- Underline the current line with dashes
keymap("v", "<F7>", "<Esc>yyp<c-v>$r-A")

-- plugin keymaps

-- hop.nvim
keymap("n", "<leader><leader>w", ":HopWord<CR>")
keymap("n", "<leader><leader>b", ":HopWordBC<CR>")
keymap("n", "<leader><leader>p", ":HopPattern<CR>")

-- telescope nvim
keymap(
	"n",
	"<leader>F",
	"<cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
)
keymap(
	"n",
	"<leader>f",
	"<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
)
--keymap(
--"n",
--"<leader>t",
--"<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
--)

keymap(
	"n",
	"<leader>y",
	"<cmd>lua require'telescope.builtin'.marks(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
)
keymap(
	"n",
	"<leader>o",
	"<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
)
keymap("n", "<leader>r", "<cmd>lua require'telescope.builtin'.lsp_references()<cr>")

keymap(
	"n",
	"<leader>t",
	"<cmd>lua require'telescope.builtin'.lsp_document_symbols(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
)

-- nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Move text up and down, only works in visual mode, other mode, since
-- xmonad conflicts, we havent mappend it yet
keymap("x", "J", ":move '>+1<CR>gv-gv")
keymap("x", "K", ":move '<-2<CR>gv-gv")

-- trouble.nvim
local opts_trouble = { silent = true, noremap = true }
keymap("n", "<leader>xw", "<cmd>Trouble workspace_diagnostics<cr>", opts_trouble)
keymap("n", "<leader>xq", "<cmd>Trouble quickfix<cr>", opts_trouble)
keymap("n", "<leader>xl", "<cmd>Trouble loclist<cr>", opts_trouble)
keymap("n", "<leader>R", "<cmd>Trouble lsp_references<cr>", opts_trouble)

vim.g.diagnostics_visible = true
function _G.toggle_diagnostics()
	if vim.g.diagnostics_visible then
		vim.g.diagnostics_visible = false
		vim.diagnostic.disable()
	else
		vim.g.diagnostics_visible = true
		vim.diagnostic.enable()
	end
end

keymap("n", "<leader>D", ":call v:lua.toggle_diagnostics()<CR>", { silent = true, noremap = true })

keymap("n", "J", "mzJ`z")
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- lazygit
keymap("n", "<leader>lg", ":call v:lua._LAZYGIT_TOGGLE()<CR>", { silent = true, noremap = true })
