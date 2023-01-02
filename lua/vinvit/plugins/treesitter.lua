local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  vim.notify("can't load treesitter plugin", "error", {
    title = "vinvit.plugins.treesitter"
  })
  return
end

treesitter.setup({
  ensure_installed = "all",
  auto_install = true,
  highlight = {
    enable = true,
  },
})
