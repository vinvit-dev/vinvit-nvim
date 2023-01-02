local status, autopairs = pcall(require, "nvim-autopairs")
if not status then
  vim.notify("Can't load nvim-autopairs plugin", "error", {
    title = "vinvit.plugins.nvim-autopairs"
  })
  return
end

autopairs.setup()

-- TODO: Add cmp integration.
