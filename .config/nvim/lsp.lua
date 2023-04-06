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

vim.diagnostic.disable()
vim.opt.completeopt:remove('preview')

vim.keymap.set('n', '<space>', '<nop>')

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '<space>D', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<space>d', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', '<space>h', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<space>i', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<space>s', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>t', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>n', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>r', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
