local status, _ = pcall(require, "vinvit.plugins.lsp.lua.mason-conf")
if not status then
  vim.notify("Can't load mason-conf subplugin in lsp configuration", "error", {
    title = "vinvit.plugins.lsp"
  })
  return
end

local status, _ = pcall(require, "vinvit.plugins.lsp.lua.lsp-config")
if not status then
  vim.notify("Can't load lsp-config subplugin in lsp configuration", "error", {
    title = "vinvit.plugins.lsp"
  })
  return
end

local status, _ = pcall(require, "vinvit.plugins.lsp.lua.lsp-saga")
if not status then
  vim.notify("Can't load lsp-sage subplugin in lsp configuration", "error", {
    title = "vinvit.plugins.lsp"
  })
  return
end
