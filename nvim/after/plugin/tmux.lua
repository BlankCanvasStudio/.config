local ok, vim = pcall(function() return vim end)
if not ok or not vim then
  return {}
end

local M = {}

-- safely set mappings only if the TmuxNavigate commands exist
local function safe_map(mode, lhs, rhs, desc)
  pcall(function()
    vim.keymap.set(mode, lhs, rhs, { desc = desc, silent = true })
  end)
end

M.general = {
  n = {
    ["<C-h>"] = { "<cmd>TmuxNavigateLeft<CR>",  "window left"  },
    ["<C-l>"] = { "<cmd>TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd>TmuxNavigateDown<CR>",  "window down"  },
    ["<C-k>"] = { "<cmd>TmuxNavigateUp<CR>",    "window up"    },
  },
}

-- Optionally apply mappings immediately if desired
pcall(function()
  for mode, maps in pairs(M.general) do
    for lhs, map in pairs(maps) do
      safe_map(mode, lhs, map[1], map[2])
    end
  end
end)

return M

