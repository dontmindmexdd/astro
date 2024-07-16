return {
  -- sync terminal colors
  { "typicode/bg.nvim", lazy = false },

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
}
