-----------------------------------------------------------
-- Plugin definitions using lazy.nvim
-----------------------------------------------------------
require("lazy").setup({
  -- Core / Utilities
  { "nvim-lua/plenary.nvim" },
  { "nvim-tree/nvim-web-devicons" },

  -- UI
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = { enable = true, ignore = false },
      actions = { open_file = { resize_window = true } },
      view = { side = "right", width = 26 },
    },
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    keys = {
      { "<leader>w", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file tree" },
      { "<leader>t", "<cmd>NvimTreeFocus<cr>", desc = "Focus file tree" },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local ok_theme, custom_onedark = pcall(require, "lualine.themes.onedark")
      require("lualine").setup({
        options = {
          theme = ok_theme and custom_onedark or "auto",
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
        },
      })
    end,
  },

  -- Git
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "│" },
        change = { text = "│" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
        untracked = { text = "┆" },
      },
    },
  },

  -- Telescope (fuzzy finder)
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
  },

  -- Treesitter (syntax, highlighting)
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      highlight = { enable = true },
      ensure_installed = {
        "lua", "vim", "python", "javascript", "typescript",
        "go", "rust", "c", "cpp", "json", "yaml", "bash", "markdown",
      },
      auto_install = true,
    },
  },
  { "nvim-treesitter/playground" },

  -- Workflow / tools
  { "theprimeagen/harpoon" },
  { "mbbill/undotree" },
  { "christoomey/vim-tmux-navigator" },

  -- Theme
  { "folke/tokyonight.nvim" },
  { "navarasu/onedark.nvim" },

  -- Git helper
  { "BurntSushi/ripgrep" },

  -- Optional LSP stack (commented out)
  -- {
  --   "VonHeikemen/lsp-zero.nvim",
  --   branch = "v3.x",
  --   dependencies = {
  --     "neovim/nvim-lspconfig",
  --     "williamboman/mason.nvim",
  --     "williamboman/mason-lspconfig.nvim",
  --     "hrsh7th/nvim-cmp",
  --     "hrsh7th/cmp-nvim-lsp",
  --     "L3MON4D3/LuaSnip",
  --   },
  -- },
})

