-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Smart Focus NvimTree: open if closed, focus if open
vim.keymap.set("n", "<leader>e", function()
  local api = require("nvim-tree.api")
  local view = require("nvim-tree.view")

  if view.is_visible() then
    api.tree.focus() -- already open → just focus it
  else
    api.tree.open() -- closed → open and focus
  end
end, { desc = "Focus or Open NvimTree" })
