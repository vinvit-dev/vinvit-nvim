local status, lspconfig = pcall(require, "lspconfig")
if not status then
  vim.notify("Can't load lspconfig plugin", "error", {
    title = "vinvit.plugins.lsp.lsp-config"
  })
  return
end

local status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status then
  vim.notify("Can't load cmp_nvim_lsp plugin", "error", {
    title = "vinvit.plugins.lsp.lsp-config"
  }) return
end

local status, servers = pcall(require, "vinvit.plugins.lsp.settings.servers")
if not status then
  vim.notify("Can't load cmp_nvim_lsp plugin", "error", {
    title = "vinvit.plugins.lsp.lsp-config"
  }) return
end

-- Define server settings.
for _, server in pairs(servers.lsp) do
  local opts = {
    capabilities = require("vinvit.plugins.lsp.lua.handlers").copabilities,
    on_attach = require("vinvit.plugins.lsp.lua.handlers").on_attach,
  }
  local status, settings = pcall(require, "vinvit.plugins.lsp.settings." .. server)
  if status then
    opts = vim.tbl_deep_extend("force", opts, settings)
  end
  lspconfig[server].setup(opts)
end

lspconfig["sumneko_lua"].setup({
	capabilities = copabilitie,
	on_attach = on_attach,
  settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})
