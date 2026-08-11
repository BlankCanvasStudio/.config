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

-- Suppress verbose debug logs
vim.lsp.set_log_level(vim.log.levels.WARN)

-- Override window/showMessage so LSP warnings/errors don't create intrusive float popups
vim.lsp.handlers["window/showMessage"] = function(_, result, ctx)
  if result and result.message then
    local client = vim.lsp.get_client_by_id(ctx.client_id)
    local name = client and client.name or "LSP"
    -- Echo to cmdline log (:messages) without blocking overlay windows
    vim.api.nvim_echo({{ string.format("[%s] %s", name, result.message), "Normal" }}, false, {})
  end
end

-- Configure diagnostics so overlay boxes don't automatically appear
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

mason.setup()
mason_lspconfig.setup({})

local default_servers = {
  "pyright",
  "gopls",
  "ts_ls",
  "rust_analyzer",
  "bashls",
  "jsonls",
  "yamlls",
  "marksman",
}

for _, server in ipairs(default_servers) do
  vim.lsp.config[server] = {}
  vim.lsp.enable(server)
end

vim.lsp.config["clangd"] = {
  cmd = {
    "clangd",
    "--path-mappings=/usr/local/google/home/srstingley/gdc-offload-daemon/build=/testing/build,/usr/local/google/home/srstingley/gdc-offload-daemon=/testing",
  },
}
vim.lsp.enable("clangd")

vim.lsp.config["lua_ls"] = {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
}
vim.lsp.enable("lua_ls")

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  end,
})
