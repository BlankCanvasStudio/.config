-----------------------------------------------------------
-- Bootstrap packer.nvim
-----------------------------------------------------------
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    print("📦 Installing packer.nvim...")
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-----------------------------------------------------------
-- Packer plugin setup
-----------------------------------------------------------
local ok, packer = pcall(require, "packer")
if not ok then
  vim.api.nvim_err_writeln("Failed to load packer.nvim")
  return
end

packer.startup(function(use)
  -- Core
  use "wbthomason/packer.nvim"

  -- UI / Navigation
  use "nvim-tree/nvim-tree.lua"
  use "nvim-lualine/lualine.nvim"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Utilities
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"

  -- Syntax / LSP
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }

  -- Theme
  use "folke/tokyonight.nvim"

  if packer_bootstrap then
    require("packer").sync()
  end
end)

-----------------------------------------------------------
-- General settings
-----------------------------------------------------------
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

-----------------------------------------------------------
-- Safe plugin setups (guarded requires)
-----------------------------------------------------------
-- nvim-tree
pcall(function()
  require("nvim-tree").setup({
    git = { enable = true, ignore = false },
    actions = { open_file = { resize_window = true } },
    view = { side = "right", width = 26 },
  })
end)

-- gitsigns
pcall(function()
  require("gitsigns").setup({
    signs = {
      add          = { text = "│" },
      change       = { text = "│" },
      delete       = { text = "_" },
      topdelete    = { text = "‾" },
      changedelete = { text = "~" },
      untracked    = { text = "┆" },
    },
    signcolumn = true,
    numhl = false,
    linehl = false,
    word_diff = false,
    watch_gitdir = { follow_files = true },
    attach_to_untracked = true,
    current_line_blame = false,
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = "eol",
      delay = 1000,
      ignore_whitespace = false,
    },
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
    sign_priority = 6,
    update_debounce = 100,
    max_file_length = 40000,
    preview_config = {
      border = "single",
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 0,
    },
  })
end)

-----------------------------------------------------------
-- Theme and basic UI
-----------------------------------------------------------
pcall(vim.cmd.colorscheme, "tokyonight")

-----------------------------------------------------------
-- Optional: Auto-compile packer whenever this file changes
-----------------------------------------------------------
vim.cmd([[
  augroup packer_auto_compile
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerCompile
  augroup END
]])

