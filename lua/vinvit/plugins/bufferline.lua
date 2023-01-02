-- TODO: Maybe change bufferline to nvim-cokeline

local status, bufferline = pcall(require, "bufferline")
if not status then
  vim.notify("Can't load bufferline plugin", "error", {
    title = "vinvit.plugins.bufferline"
  })
  return
end

bufferline.setup()
