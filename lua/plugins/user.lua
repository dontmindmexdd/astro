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
}
