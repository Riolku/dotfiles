local servers = {
  'rust_analyzer',
  'jedi_language_server',
  'clangd',
}

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = servers,
}

local lspconfig = require("lspconfig")
for _, server in ipairs(servers) do
  lspconfig[server].setup{}
end
