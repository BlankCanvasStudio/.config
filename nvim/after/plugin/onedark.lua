local ok, onedark = pcall(require, "onedark")
if not ok then
  return
end

onedark.setup {
  style = 'deep', -- fixed typo and lowercase to match valid options
}

onedark.load()

pcall(vim.cmd.hi, "EndOfBuffer guibg=NONE ctermbg=NONE")

