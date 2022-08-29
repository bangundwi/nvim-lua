require('telescope').load_extension('lazygit')

local opts = { noremap = true, silent = true }

 vim.keymap.set('n', '<leader>git', '<Cmd> LazyGit <CR>', opts)
