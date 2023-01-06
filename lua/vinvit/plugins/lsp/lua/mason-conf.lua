local status, mason = pcall(require, "mason")
if not status then
  vim.notify("Can't load mason plugin", "error", {
    title = "vinvit.plugins.lsp.mason"
  })
  return
end

local status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status then
  vim.notify("Can't load mason-lspconfig plugin", "error", {
    title = "vinvit.plugins.lsp.mason"
  })
  return
end

local status, servers = pcall(require, "vinvit.plugins.lsp.settings.servers")
if not status then
  vim.notify("Can't load servers to install", "error", {
    title = "vinvit.plugins.lsp.mason"
  })
  return
end

local servers_to_install = servers.lsp;
mason.setup()

mason_lspconfig.setup({
  ensure_installed = servers_to_install,
  automatic_installation = true,
})
