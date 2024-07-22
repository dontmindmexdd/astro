-- better page up/page down
-- local neoscroll = require "neoscroll"
-- if not vim.g.vscode and neoscroll then
--   local keymap = {
--     ["<C-u>"] = function() neoscroll.ctrl_u { duration = 110 } end,
--     ["<C-d>"] = function() neoscroll.ctrl_d { duration = 110 } end,
--     ["<C-b>"] = function() neoscroll.ctrl_b { duration = 110 } end,
--     ["<C-f>"] = function() neoscroll.ctrl_f { duration = 110 } end,
--     ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 }) end,
--     ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor = false, duration = 100 }) end,
--     ["zt"] = function() neoscroll.zt { half_win_duration = 110 } end,
--     ["zz"] = function() neoscroll.zz { half_win_duration = 110 } end,
--     ["zb"] = function() neoscroll.zb { half_win_duration = 110 } end,
--   }
--
--   local modes = { "n", "v", "x" }
--   for key, func in pairs(keymap) do
--     vim.keymap.set(modes, key, func)
--   end
-- end
-- better up/down
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
