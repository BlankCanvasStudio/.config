-----------------------------------------------------------
-- Bootstrap lazy.nvim
-----------------------------------------------------------
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
pcall(require, "plugins.lazy")
pcall(require, "remaps.init")

-----------------------------------------------------------
-- General UI settings
-----------------------------------------------------------
vim.g.mapleader = " "
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Theme
pcall(vim.cmd.colorscheme, "tokyonight")

