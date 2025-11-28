return {
  "olexsmir/gopher.nvim",
  ft = "go",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("gopher").setup()
  end,
}
