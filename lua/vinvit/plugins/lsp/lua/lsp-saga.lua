local status, lspsaga = pcall(require, "lspsaga")
if not status then
  vim.notify("Can't load lspsaga plugin", "error", {
    title = "vinvit.plugins.lsp.lspsaga"
  })
  return
end

lspsaga.init_lsp_saga()
