return {
  {
    "neovim/nvim-lspconfig",
    keys = {
      { "<F2>", vim.lsp.buf.rename, desc = "LSP Rename" },
    },
  },
}
