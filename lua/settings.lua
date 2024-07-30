vim.opt.scrolloff = 10
vim.o.sidescrolloff = 12
vim.opt.timeoutlen = vim.g.vscode and 1000 or 300

-- listchars
vim.o.list = false
vim.opt.listchars:append {
  space = "·",
  trail = "~",
  tab = "│·",
}

vim.opt.swapfile = false
