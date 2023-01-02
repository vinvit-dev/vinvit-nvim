local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
  vim.notify("Cant load theme", "error")
  return
end
