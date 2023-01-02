local status, comment = pcall(require, "nvim_comment")
if not status then
  vim.notify("Can't load nvim-comment plugin", "error", {
    title = "vinvit.plugins.nvim-comment"
  })
  return
end

comment.setup()
