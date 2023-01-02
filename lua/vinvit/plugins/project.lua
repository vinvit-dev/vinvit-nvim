local status, project = pcall(require, "project_nvim")
if not status then
  vim.notify("Can't load project_nvim plugin", "error", {
    title = "vinvit.plugins.project"
  })
  return
end

project.setup({

})
