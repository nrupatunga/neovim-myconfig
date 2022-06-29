local function keymap(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

-- change leader to comma
vim.g.mapleader = ","

-- which key helps in getting the leader key mappings
keymap('n', '<leader>', ":WhichKey ','<CR>")

-- easier escape mode from home row keys
keymap("i", "jk", "<ESC>", opts)


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


-- telescope nvim
keymap("n", "<leader>F", "<cmd>lua require'telescope.builtin'.git_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>")

