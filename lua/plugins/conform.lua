return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      go = { "goimports", "gofumpt" }, -- goimports organiza imports, gofumpt formata
      -- ou use apenas um:
      -- go = { "goimports-reviser", "gofumpt" },
    },

    -- Formata automaticamente ao salvar
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },

    formatters = {
      goimports = {
        prepend_args = { "-local", "github.com/seu-usuario" }, -- Opcional: prioriza imports locais
      },
    },
  },
}
