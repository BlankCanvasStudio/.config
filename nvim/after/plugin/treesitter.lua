-- Safe require
local ok, ts = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end

-- Optional: patch broken parser definitions (e.g., SystemVerilog)
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.systemverilog = {
  install_info = {
    url = "https://github.com/tree-sitter/tree-sitter-verilog", -- working parser
    files = { "src/parser.c" },
  },
}

ts.setup {
  -- ✅ Most popular programming languages & file formats
  ensure_installed = {
    -- Core languages
    "bash",
    "c", "cpp",
    "python",
    "lua",
    "rust",
    "go",
    "java",
    "typescript", "javascript",
    "tsx",
    "json", "json5", "jsonc",
    "yaml",
    "toml",
    "html",
    "css", "scss",
    "markdown", "markdown_inline",
    "dockerfile",
    "make",
    "cmake",
    "vim", "vimdoc",
    "regex",
    "query", -- Treesitter query files
    "sql",
    "gitcommit", "gitignore", "git_rebase",
    "graphql",
    "php",
    "ruby",
    "perl",
    "swift",
    "kotlin",
    "r",
    "nix",
    "haskell",
    "zig",
    "latex",
    "ini",
    "diff",
    "proto",  -- Protocol Buffers
    "xml",
    "csv",
    "verilog", -- stable HDL parser
  },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

