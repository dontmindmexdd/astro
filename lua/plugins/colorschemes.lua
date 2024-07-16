return {
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      highlights = function(colors, helpers)
        local lighten = helpers.lighten
        local darken = helpers.darken

        -- make listchars not annoying
        local fg
        if vim.o.background == "dark" then
          fg = darken(colors.base01, 35)
        else
          fg = lighten(colors.base01, 65)
        end

        return {
          NonText = { fg = fg },
          Whitespace = { fg = fg },
          SpecialKey = { fg = fg },
        }
      end,
    },
  },
  {
    "sainnhe/edge",
    lazy = false,
    priority = 1000,
  },
}
