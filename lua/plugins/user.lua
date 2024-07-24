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

  -- best statusline ^-^
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

  -- neotree on the right
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },

  -- auto dark mode based on system mode
  {
    "f-person/auto-dark-mode.nvim",
    opts = {
      update_interval = 1000,
      set_dark_mode = function() vim.opt.background = "dark" end,
      set_light_mode = function() vim.opt.background = "light" end,
    },
  },
}
