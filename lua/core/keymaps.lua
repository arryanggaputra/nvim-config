local opts = { noremap = true, silent = true }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.nvim_tree_special_files = { ['README.md'] = 1, ['Makefile'] = 1, ['MAKEFILE'] = 1, ['.env'] = 1 }

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual Block --
-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- Toggle nvim tree --
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
vim.keymap.set('n', 'te', ':tabedit')
vim.keymap.set('n', 'gf', '<C-W>gf')
vim.keymap.set('v', 'gf', '<C-W>gf')


-- Normal-mode commands
vim.keymap.set('n', 'J', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', 'K', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', 'H', ':MoveHChar(-1)<CR>', opts)
vim.keymap.set('n', 'L', ':MoveHChar(1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', 'J', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', 'K', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', 'H', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', 'L', ':MoveHBlock(1)<CR>', opts)
