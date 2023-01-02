local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("can't load telescope plugin", "error", {
    title = "vinvit.plugins.telescope"
  })
  return
end

telescope.setup()

telescope.load_extension("notify")
telescope.load_extension("projects")

-- TODO: Add shorcuts.
