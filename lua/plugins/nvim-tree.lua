return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>" },
  },
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = true,
      },
    })

    -- ✅ Keep LazyVim's start menu (Alpha)
    -- and open nvim-tree automatically AFTER it closes
    vim.api.nvim_create_autocmd("User", {
      pattern = "AlphaClosed",
      callback = function()
        require("nvim-tree.api").tree.open()
      end,
    })
  end,
}
