---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },

  -- use lualine
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  -- colorschemes
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.vscode-nvim" },
  { import = "astrocommunity.colorscheme.oxocarbon-nvim" },
  { import = "astrocommunity.colorscheme.github-nvim-theme" },

  -- language packs
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.lua" },

  -- other plugins
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.motion.mini-ai" },
  { import = "astrocommunity.motion.mini-surround" },
  { import = "astrocommunity.indent.indent-blankline-nvim" },
  { import = "astrocommunity.lsp.ts-error-translator-nvim" },
  { import = "astrocommunity.recipes.vscode" },
  -- { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  -- { import = "astrocommunity.recipes.heirline-clock-statusline" },
  { import = "astrocommunity.recipes.telescope-lsp-mappings" },
}
