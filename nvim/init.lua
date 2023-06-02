require('plugins.init')
require('remaps.init')

vim.wo.wrap = false

vim.opt.scrolloff = math.floor(vim.api.nvim_win_get_height(0) / 4)

vim.cmd.set('nu')

vim.cmd.set('tabstop=4')
vim.cmd.set('shiftwidth=4 smarttab')
vim.cmd.set('expandtab')
vim.cmd.set('tabstop=8 softtabstop=0')

vim.cmd.hi('LineNr guifg=#ffffff')

vim.api.nvim_set_option("clipboard","unnamed")

