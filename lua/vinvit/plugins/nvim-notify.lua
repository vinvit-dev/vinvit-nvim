
local status, nvim_notify = pcall(require, "notify")
if not status then
  print("Can't load nvim-notify plugin")
  return
end
nvim_notify.setup({
  stages = "slide"
})
vim.notify = nvim_notify
