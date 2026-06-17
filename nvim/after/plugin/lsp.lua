local status_mason, mason = pcall(require, "mason")
if not status_mason then
  return
end

local status_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_mason_lspconfig then
  return
end

local status_lspconfig, lspconfig = pcall(require, "lspconfig")
if not status_lspconfig then
  return
end

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "lua_ls",
    "pyright",
    "gopls",
    "ts_ls",
    "clangd",
    "rust_analyzer",
    "bashls",
    "jsonls",
    "yamlls",
    "marksman",
  },
  handlers = {
    function(server_name)
      lspconfig[server_name].setup({})
    end,
    ["lua_ls"] = function()
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })
    end,
  },
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  end,
})
