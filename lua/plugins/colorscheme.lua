return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("onedarkpro").setup({
      options = {
        transparency = false, -- habilita fundo transparente
        terminal_colors = true, -- aplica cores no terminal
        highlight_inactive_windows = false,
      },
      -- escolha a variante dark correta
      -- Opções: 'dark', 'darker', 'cool', 'deep', 'warm', etc.
      theme = "onedark_dark",
    })

    vim.cmd("colorscheme onedark_dark")
  end,
}
