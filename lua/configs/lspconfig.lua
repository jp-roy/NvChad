-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Ruby LSP configuration
lspconfig.ruby_lsp.setup {
  cmd = { "/Users/jean-philippe.roy/.asdf/shims/ruby-lsp" },
  filetypes = { "ruby" }, -- Set filetypes for Ruby
  root_dir = lspconfig.util.root_pattern("Gemfile", ".git"), -- Root detection
}

-- Disable rubocop violations appearing at the end of each line
vim.diagnostic.config({
  virtual_text = false,
  underline = false,
  signs = false,
})
