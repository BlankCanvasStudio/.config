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

vim.opt.tabstop = 4        -- Number of spaces that a tab counts for
vim.opt.shiftwidth = 4     -- Number of spaces for each indent
vim.opt.expandtab = true   -- Convert tabs to spaces

-- Draws line for short code
vim.opt.colorcolumn = "81"

-- Theme
pcall(vim.cmd.colorscheme, "catppuccin")


-- Automatically set scrolloff to 1/4th of the window height
vim.api.nvim_create_autocmd("VimResized", {
  callback = function()
    local height = vim.api.nvim_win_get_height(0)
    vim.o.scrolloff = math.floor(height / 4)
  end,
})

-- Set initial value on startup
local initial_height = vim.api.nvim_win_get_height(0)
vim.o.scrolloff = math.floor(initial_height / 4)

