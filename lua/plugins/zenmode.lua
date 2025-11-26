return {
  "folke/zen-mode.nvim",
  keys = {
    {
      "<C-=>",
      function()
        require("zen-mode").toggle()
      end,
      desc = "Zoom Window",
    },
  },
  opts = {},
}
