-- AstroLSP allows you to customize the features in AstroNvim's LSP configuration engine
-- Configuration documentation can be found with `:h astrolsp`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing
local lspconfig = require "lspconfig"

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    config = {
      eslint = {
        root_dir = lspconfig.util.find_git_ancestor,
        settings = {
          workingDirectory = { mode = "location" },
        },
      },
    },
  },
}
