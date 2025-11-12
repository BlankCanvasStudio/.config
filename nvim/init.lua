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
-- Safe requires
-----------------------------------------------------------
pcall(require, "plugins.packer")
pcall(require, "remaps.init")

-----------------------------------------------------------
-- Basic settings
-----------------------------------------------------------
vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true

-- Theme
pcall(vim.cmd.colorscheme, "tokyonight")

-----------------------------------------------------------
-- Auto-compile Packer when plugin config changes
-----------------------------------------------------------
vim.cmd([[
  augroup packer_auto_compile
    autocmd!
    autocmd BufWritePost lua/plugins/packer.lua source <afile> | PackerCompile
  augroup END
]])

