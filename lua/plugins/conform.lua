return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "goimports", "gofumpt" },
    },

    formatters = {
      goimports = {
        prepend_args = { "-local", "github.com/seu-usuario" }, -- Opcional
      },
    },
  },
}
