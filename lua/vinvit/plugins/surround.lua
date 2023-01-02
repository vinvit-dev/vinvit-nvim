local status, surround = pcall(require, "nvim-surround")
if not status then
  vim.notify("Can't load nvim-surround plugin", "error", {
    title = "vinvit.plugins.surround"
  })
  return
end

surround.setup()
