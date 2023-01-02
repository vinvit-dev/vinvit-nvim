local status, lualine = pcall(require, "lualine")
if not status then
  vim.notify("Can't load lualine plugin", "error", {
    title = "vinvit.plugins.lualine"
  })
  return
end

lualine.setup()
