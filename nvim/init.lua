-----------------------------------------------------------
-- Bootstrap lazy.nvim
-----------------------------------------------------------
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

pcall(function()
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "
end)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  print("📦 Installing lazy.nvim...")
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-----------------------------------------------------------
-- Load plugin definitions + remaps
-----------------------------------------------------------
-- pcall(require, "plugins.lazy")
require("lazy").setup("plugins")
pcall(require, "remaps.init")

-----------------------------------------------------------
-- General UI settings
-----------------------------------------------------------
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.wrap = false

-- Theme
pcall(vim.cmd.colorscheme, "catppuccin")

