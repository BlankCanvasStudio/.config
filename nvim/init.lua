require('plugins.init')
require('remaps.init')

vim.wo.wrap = false

vim.opt.scrolloff = math.floor(vim.api.nvim_win_get_height(0) / 4)

vim.cmd.set('nu')

vim.cmd.hi('LineNr guifg=#ffffff')
