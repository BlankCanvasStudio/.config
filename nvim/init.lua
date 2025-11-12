-- ─────────────────────────────────────────────────────────────
--  Bootstrap packer.nvim
-- ─────────────────────────────────────────────────────────────
local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  print("📦 Installing packer.nvim...")
  fn.system({ "git", "clone", "--depth", "1",
    "https://github.com/wbthomason/packer.nvim", install_path })
  vim.cmd("packadd packer.nvim")
end

local ok_packer, packer = pcall(require, "packer")
if not ok_packer then
  vim.api.nvim_err_writeln("❌ Failed to load packer.nvim")
  return
end

-- ─────────────────────────────────────────────────────────────
--  Plugin management (headless-safe)
-- ─────────────────────────────────────────────────────────────
packer.startup(function(use)
  use "wbthomason/packer.nvim"

  -- Core utilities
  use "nvim-lua/plenary.nvim"

  -- UI / Navigation
  use "nvim-tree/nvim-tree.lua"
  use "nvim-lualine/lualine.nvim"
  use { "nvim-telescope/telescope.nvim", tag = "0.1.6" }
  use "lewis6991/gitsigns.nvim"

  -- Syntax / LSP / Autocomplete
  use "nvim-treesitter/nvim-treesitter"
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"

  -- Theme
  use "folke/tokyonight.nvim"

  -- Automatically run :PackerSync when bootstrapping
  if fn.empty(fn.glob(install_path)) > 0 then
    packer.sync()
  end
end)

-- ─────────────────────────────────────────────────────────────
--  Safe imports for modular config
-- ─────────────────────────────────────────────────────────────
pcall(require, "plugins.init")
pcall(require, "remaps.init")

-- ─────────────────────────────────────────────────────────────
--  General editor settings
-- ─────────────────────────────────────────────────────────────
local opt = vim.opt
local wo = vim.wo

wo.wrap = false
opt.scrolloff = math.floor(vim.api.nvim_win_get_height(0) / 4)
opt.number = true
opt.guicursor = "n-v-c-i:block"

-- Tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.expandtab = true
opt.softtabstop = 0

-- Visual guides
opt.colorcolumn = "98"

-- Clipboard
opt.clipboard = "unnamedplus"

-- ─────────────────────────────────────────────────────────────
--  Highlights
-- ─────────────────────────────────────────────────────────────
local hi = vim.api.nvim_set_hl
pcall(hi, 0, "ColorColumn", { fg = "#000000", bg = "#bb9af7" })
pcall(hi, 0, "LineNr", { fg = "#ffffff" })
pcall(hi, 0, "SignColumn", { bg = "NONE" })
pcall(hi, 0, "DiffAdd", { fg = "#9ece6a", bg = "NONE" })
pcall(hi, 0, "DiffChange", { fg = "#bb9af7", bg = "NONE" })
pcall(hi, 0, "DiffDelete", { fg = "#f7768e", bg = "NONE" })
pcall(hi, 0, "DiffText", { fg = "#ffffff", bg = "NONE" })

-- ─────────────────────────────────────────────────────────────
--  Keymaps
-- ─────────────────────────────────────────────────────────────
vim.keymap.set("n", "<leader>r", ":%s/\\t/    /g<CR>:w<CR>", {
  noremap = true,
  silent = false,
  desc = "Replace tabs with spaces and save",
})

-- ─────────────────────────────────────────────────────────────
--  Optional: colorscheme
-- ─────────────────────────────────────────────────────────────
pcall(vim.cmd.colorscheme, "tokyonight")

