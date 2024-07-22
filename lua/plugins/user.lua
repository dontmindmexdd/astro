local notVscode = not vim.g.vscode
return {
  -- sync terminal colors
  { "typicode/bg.nvim", enabled = notVscode, lazy = false },

  -- indent
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        char = "┊",
        highlight = "Whitespace",
      },
    },
  },

  {
    "echasnovski/mini.indentscope",
    opts = {
      symbol = "│",
    },
  },

  -- cmp select first on enter
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require "cmp"
      opts.mapping["<CR>"] = cmp.mapping.confirm { select = true }
    end,
  },

  -- {
  --   "karb94/neoscroll.nvim",
  --   enabled = false,
  --   opts = {
  --     hide_cursor = false,
  --     -- post_hook = function() vim.cmd "normal! zz" end,
  --   },
  -- },

  {
    "echasnovski/mini.statusline",
    version = false,
    opts = {},
    specs = {
      {
        "rebelot/heirline.nvim",
        optional = true,
        opts = function(_, opts) opts.statusline = nil end,
      },
    },
  },
}
