local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
  vim.notify("Can't load nvim-tree plugin", "error", {
    title = "vinvit.plugins.nvim-tree"
  })
  return
end

nvim_tree.setup()
