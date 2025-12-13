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
vim.keymap.set("v", "C", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", {
  desc = "Comment block",
})

-- Modo Normal: adiciona "- " no início da linha atual
vim.api.nvim_set_keymap("n", "I", "I- <Esc>", opts)

-- Modo Visual: adiciona "- " no início de cada linha selecionada
vim.api.nvim_set_keymap("v", "I", [[:s/^/- /<CR>gv]], opts)

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  return "<S-Tab>"
end, { expr = true })
-- Identar linha no modo normal
vim.keymap.set("n", "<Tab>", ">>", { noremap = true, silent = true })
-- Desindentar linha no modo normal
vim.keymap.set("n", "<S-Tab>", "<<", { noremap = true, silent = true })
-- Indentar seleção no modo visual
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true })
-- Desindentar seleção no modo visual
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true })

-- zen mode
vim.keymap.set("n", "<C-=>", function()
  require("zen-mode").toggle()
end, { desc = "Zoom Window" })

vim.keymap.set("v", "C", function()
  local api = require("Comment.api")
  -- pega a seleção visual e alterna o comentário
  api.toggle.linewise(vim.fn.visualmode())
end, { desc = "Comment block" })
