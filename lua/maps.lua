local opts = { noremap = true, silent = true}

local term_opts = {silent = true}

local keymaps = vim.api.nvim_set_keymap

-- Remap space as leader keymap
keymaps("","<Space>","<Nop>", opts)
vim.g.mapleader = " "

vim.g.maplocalleader = " "
-- Insert
keymaps("i","jk","<ESC>", opts)
--Normal

-- Better window navigation
keymaps("n", "<C-h>", "<C-w>h", opts)
keymaps("n", "<C-k>", "<C-w>k", opts)
keymaps("n", "<C-j>", "<C-w>j", opts)
keymaps("n", "<C-l>", "<C-w>l", opts)

keymaps("n", "<C-Up>", ":resize -2<CR>", opts)
keymaps("n", "<C-Down>", ":resize +2<CR>", opts)
keymaps("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymaps("n", "<C-Right>", ":vertical resize +2<CR>", opts)


--#####################################

local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

keymap.set('n','<Enter>','<CR> :nohlsearch<CR>')

-- Commentary
local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>/', '<Cmd>Commentary<CR>', opts)
-- setting relative dan norelativenumber
vim.keymap.set('n', ',rn', '<Cmd> set relativenumber <CR>', opts)
vim.keymap.set('n', ',nr', '<Cmd> set norelativenumber <CR>', opts)

