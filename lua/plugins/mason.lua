return {
  -- Mason plugin
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },

  -- Mason-LSPConfig plugin
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "pyright", "lua_ls" }, -- your LSPs
      automatic_installation = true,
    },
  },

  -- Optional: directly setup mason-lspconfig
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "lua_ls" },
        automatic_installation = true,
      })
    end,
  },

  {
    vim.diagnostic.config({
      virtual_text = true,
    }),
  },
}
