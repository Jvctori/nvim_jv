-- lua/config/go.lua
local lspconfig = require("lspconfig")

lspconfig.gopls.setup({
  on_attach = function(client, bufnr)
    -- Formata automaticamente ao salvar
    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*.go",
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end,
})
vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.bo.tabstop = 4 -- largura do tab
    vim.bo.shiftwidth = 4 -- recuo automático
    vim.bo.softtabstop = 4
    vim.bo.expandtab = false -- Go usa tabs
  end,
}
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go" },
  highlight = { enable = true },
  indent = { enable = true },
})
