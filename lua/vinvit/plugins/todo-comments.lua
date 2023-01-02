local status, todo_comments = pcall(require, "todo-comments")
if not status then
  vim.notify("can't load todo-comments plugin", "error", {
    title = "vinvit.plugins.todo-comments"
  })
  return
end

todo_comments.setup()
