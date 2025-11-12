vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeFocus)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    require('telescope.builtin').grep_string({
        search = vim.fn.input("Regex > "),
        use_regex = true,
        additional_args = function(opts)
            return { "--pcre2" }
        end
    })
end)

