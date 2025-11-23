return {
  "olexsmir/gopher.nvim",
  ft = "go",
  opts = {},
  build = function()
    require("gopher.install").install() -- instala binários necessários
  end,
}
