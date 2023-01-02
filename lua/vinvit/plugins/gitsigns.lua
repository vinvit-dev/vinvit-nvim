
local status, gitsigns = pcall(require, "gitsigns")
if not status then
  vim.notify("Can't load gitsigns plugin", "error", {
    title = "vinvit.plugins.gitsigns"
  })
  return
end

gitsigns.setup()
