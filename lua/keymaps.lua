-- better page up/page down
neoscroll = require "neoscroll"
local keymap = {
  ["<C-u>"] = function() neoscroll.ctrl_u { duration = 70 } end,
  ["<C-d>"] = function() neoscroll.ctrl_d { duration = 70 } end,
  ["<C-b>"] = function() neoscroll.ctrl_b { duration = 70 } end,
  ["<C-f>"] = function() neoscroll.ctrl_f { duration = 70 } end,
  ["<C-y>"] = function() neoscroll.scroll(-0.1, { move_cursor = false, duration = 100 }) end,
  ["<C-e>"] = function() neoscroll.scroll(0.1, { move_cursor = false, duration = 100 }) end,
  ["zt"] = function() neoscroll.zt { half_win_duration = 70 } end,
  ["zz"] = function() neoscroll.zz { half_win_duration = 70 } end,
  ["zb"] = function() neoscroll.zb { half_win_duration = 70 } end,
}
local modes = { "n", "v", "x" }
for key, func in pairs(keymap) do
  vim.keymap.set(modes, key, func)
end

-- better up/down
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
