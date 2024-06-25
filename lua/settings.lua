vim.opt.scrolloff = 10
vim.o.sidescrolloff = 12

-- listchars
vim.o.list = true
vim.opt.listchars:append {
  -- space = "·",
  trail = "~",
  tab = "│·",
}
