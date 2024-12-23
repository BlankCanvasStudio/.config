require('plugins.init')
require('remaps.init')

vim.wo.wrap = false
vim.opt.scrolloff = math.floor(vim.api.nvim_win_get_height(0) / 4)

vim.cmd.set('nu')

vim.cmd.set('guicursor=n-v-c-i:block')

vim.cmd.set('tabstop=4')
vim.cmd.set('shiftwidth=4 smarttab')
vim.cmd.set('expandtab')
vim.cmd.set('tabstop=8 softtabstop=0')

vim.cmd.set('colorcolumn=98')
vim.cmd.hi('ColorColumn guifg=black guibg=#bb9af7')

vim.cmd.hi('LineNr guifg=#ffffff')

vim.api.nvim_set_option("clipboard","unnamed")

-- Set up nice colors for gitsigns while we're here
vim.cmd.hi("SignColumn None")
vim.cmd.hi("DiffAdd guifg=#9ece6a guibg=None")
vim.cmd.hi("DiffChange guifg=#bb9af7 guibg=None")
vim.cmd.hi("DiffDelete guifg=#f7768e guibg=None")
vim.cmd.hi("DiffText guifg=white guibg=None")

-- Set up tab find and replace remap
vim.api.nvim_set_keymap('n', '<leader>r', ':%s/\\t/    /g<Cr>:w<Cr>', { noremap = true, silent = false })

