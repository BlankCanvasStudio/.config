-- Safe keymap for Undotree
pcall(function()
  if vim.fn.exists(":UndotreeToggle") == 2 then
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })
  else
    -- fallback binding (optional)
    vim.keymap.set("n", "<leader>u", "<Nop>", { desc = "Undotree not installed" })
  end
end)

