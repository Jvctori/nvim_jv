-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_create_user_command("FF", function()
  require("telescope.builtin").find_files()
end, {})

vim.keymap.set("n", "<C-l>", ":bnext<CR>", { desc = "Próximo buffer" })
vim.keymap.set("n", "<C-h>", ":bprevious<CR>", { desc = "Buffer anterior" })

vim.keymap.set("n", "C", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Comment line" })

vim.keymap.set("v", "C", function()
  local api = require("Comment.api")
  -- pega a seleção visual e alterna o comentário
  api.toggle.linewise(vim.fn.visualmode())
end, { desc = "Comment block" })
