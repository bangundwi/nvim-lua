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

--vim.cmd [[
--  augroup numbertoggle
--	  autocmd!
--	  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
--	  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
--  augroup END
--]]


--############# NEW ##############
--shorten function name
local keymaps = vim.keymap.set
local optss = { silent = true}

-- Visual
-- Stay in indent mode
keymaps("v", "<", "<gv", opts)
keymaps("v", ">", ">gv", opts)

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c"

--Beeter Paste
keymaps("v","p", '"_dP', opts)

-- Git
keymaps("n", "<leader>ggc", ":Telescope git_commits<cr>", opts)
keymaps("n", "<leader>ggs", ":Telescope git_status<cr>", opts)

-- Comment
keymaps("n", "<leader>cmm", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymaps("x", "<leader>cmm", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

--Clipboard
vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }

