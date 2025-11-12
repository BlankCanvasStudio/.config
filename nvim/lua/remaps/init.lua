vim.g.mapleader = " "

-- File navigation
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open netrw" })

-- NvimTree
vim.keymap.set("n", "<leader>w", vim.cmd.NvimTreeToggle, { desc = "Toggle file tree" })
vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeFocus, { desc = "Focus file tree" })

-- Telescope
local ok, builtin = pcall(require, "telescope.builtin")
if ok then
  vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
  vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "Git files" })
  vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({
      search = vim.fn.input("Regex > "),
      use_regex = true,
      additional_args = function() return { "--pcre2" } end,
    })
  end, { desc = "Search project" })
end

