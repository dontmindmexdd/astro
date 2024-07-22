vim.opt.scrolloff = 10
vim.o.sidescrolloff = 12
vim.opt.timeoutlen = vim.g.vscode and 1000 or 300

-- listchars
vim.o.list = true
vim.opt.listchars:append {
  space = "·",
  trail = "~",
  tab = "│·",
}

if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_show_border = false
  vim.o.guifont = "JetBrains Mono:h18"
end
