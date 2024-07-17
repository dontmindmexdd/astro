-- better page up/page down
vim.keymap.set("n", "<C-d>", '<cmd>call smoothie#do("<C-d>")<CR><cmd>call smoothie#do("zz")<CR>', { silent = true })
vim.keymap.set("v", "<C-d>", '<cmd>call smoothie#do("<C-d>")<CR><cmd>call smoothie#do("zz")<CR>', { silent = true })
vim.keymap.set("n", "<C-u>", '<cmd>call smoothie#do("<C-u>")<CR><cmd>call smoothie#do("zz")<CR>', { silent = true })
vim.keymap.set("v", "<C-u>", '<cmd>call smoothie#do("<C-u>")<CR><cmd>call smoothie#do("zz")<CR>', { silent = true })

-- better up/down
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
