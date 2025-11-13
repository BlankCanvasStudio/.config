vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local arg = vim.fn.argv(0)

    if arg == "" then
      require("nvim-tree.api").tree.open()
    elseif vim.fn.isdirectory(arg) == 1 then
      require("nvim-tree.api").tree.open()
    end
  end,
})

