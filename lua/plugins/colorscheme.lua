return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  opts = {
    colorscheme = "gruvbox",
    contrast = "hard",
    transparent_mode = true,
  },
  config = function(_, opts)
    require("gruvbox").setup(opts)
    vim.cmd([[colorscheme gruvbox]])
  end,
}
