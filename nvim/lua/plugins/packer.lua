-----------------------------------------------------------
-- Packer Plugin Manager
-----------------------------------------------------------
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer manages itself
  use "wbthomason/packer.nvim"

  -- Core utilities
  use "nvim-lua/plenary.nvim"

  -- UI
  use "nvim-tree/nvim-web-devicons"
  use "nvim-tree/nvim-tree.lua"
  use "nvim-lualine/lualine.nvim"
  use "folke/tokyonight.nvim"

  -- Fuzzy finding
  use { "nvim-telescope/telescope.nvim", tag = "0.1.6", requires = { "nvim-lua/plenary.nvim" } }

  -- Syntax + Treesitter
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "nvim-treesitter/playground"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Workflow
  use "theprimeagen/harpoon"
  use "mbbill/undotree"
  use "christoomey/vim-tmux-navigator"

  -- Optional LSP zero setup
  -- use {
  --   "VonHeikemen/lsp-zero.nvim",
  --   branch = "v3.x",
  --   requires = {
  --     "neovim/nvim-lspconfig",
  --     "williamboman/mason.nvim",
  --     "williamboman/mason-lspconfig.nvim",
  --     "hrsh7th/nvim-cmp",
  --     "hrsh7th/cmp-nvim-lsp",
  --     "L3MON4D3/LuaSnip",
  --   }
  -- }

  if packer_bootstrap then
    require("packer").sync()
  end
end)

