local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end


vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- ColorSheme
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim'}
  }
  use("gruvbox-community/gruvbox")
  use("folke/tokyonight.nvim")

  -- ThePrimeagen
  use("nvim-treesitter/playground")
  use("romgrk/nvim-treesitter-context")
  use("mfussenegger/nvim-dap")
  use("rcarriga/nvim-dap-ui")
  use("theHamsta/nvim-dap-virtual-text")

  use("ThePrimeagen/git-worktree.nvim")
  use("ThePrimeagen/harpoon")
  use("sbdchd/neoformat")
  use("TimUntersberger/neogit")
  use("nvim-lua/popup.nvim")

  -- #################



  use 'kyazdani42/nvim-web-devicons' -- File Icons
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip' --Snippet
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'jose-elias-alvarez/null-ls.nvim' -- Use neovim as a language server to inject LSP diagnostics, code actions, and more via lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's vuild-in LSP client
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use("mbbill/undotree")

  -- cmp plugins
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' --Completion
  use 'hrsh7th/cmp-path' --Completion
  use 'hrsh7th/cmp-cmdline'--Completion
  use 'saadparwaiz1/cmp_luasnip' --snippet completions
  
  -- Snippets
  use 'neovim/nvim-lspconfig' -- LSP
  use 'williamboman/nvim-lsp-installer' --simple to use langugaeg server installaer

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua'
  use 'norcalli/nvim-colorizer.lua'
 
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
  
  use 'folke/zen-mode.nvim'
  use 'ray-x/lsp_signature.nvim'
  -- Emmet
  
  use {
    "mattn/emmet-vim",
setup = function () -- load stuff
vim.g.user_emmet_leader_key = '<c-m>'
vim.g.user_emmet_settings = {
indent_blockelement = 1,
}
end
  }

  -- Lazygit
  use 'kdheepak/lazygit.nvim'

  --Comment
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  use 'JoosepAlviste/nvim-ts-context-commentstring'

  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  use 'terrortylor/nvim-comment'
  use 'chrisbra/vim-commentary'
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "nvim-web-devicons",
    config = function()
      require('config.nvim-tree')
    end,
  }
end)

