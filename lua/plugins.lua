vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  use "wbthomason/packer.nvim"

  use "nvim-telescope/telescope-file-browser.nvim"

  use "mbbill/undotree"
  use "lewis6991/impatient.nvim"
  use "nvim-lua/plenary.nvim"

  use "lewis6991/gitsigns.nvim"
  use "kdheepak/lazygit.nvim"
  use "tpope/vim-fugitive"

  use { "catppuccin/nvim", as = "catppuccin" }

  use "nvim-telescope/telescope.nvim"

  use "nvim-treesitter/nvim-treesitter"

  use {
    "VonHeikemen/lsp-zero.nvim",
    requires = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    }
  }

end)
