return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│", -- pode trocar por: "▏", "▎", "▍", "▕", "┆"
      highlight = "IndentBlanklineChar",
    },
    scope = { enabled = true },
  },
}
