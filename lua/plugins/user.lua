local notVscode = not vim.g.vscode
return {
  -- sync terminal colors
  { "typicode/bg.nvim", cond = notVscode, lazy = false },

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
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function(_, opts)
  --     local cmp = require "cmp"
  --     opts.mapping["<CR>"] = cmp.mapping.confirm { select = true }
  --   end,
  -- },

  -- best statusline ^-^
  {
    "echasnovski/mini.statusline",
    cond = notVscode,
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
      filesystem = {
        filtered_items = { hide_hidden = false, hide_dotfiles = false },
      },
      window = {
        position = "right",
      },
    },
  },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },
  },

  -- auto dark mode based on system mode
  {
    "f-person/auto-dark-mode.nvim",
    cond = notVscode,
    lazy = false,
    priority = 1,
    opts = {
      update_interval = 1000,
      set_dark_mode = function()
        vim.opt.background = "dark"
        vim.cmd "colorscheme minischeme"
      end,
      set_light_mode = function()
        vim.opt.background = "light"
        vim.cmd "colorscheme minischeme"
      end,
    },
  },
}
