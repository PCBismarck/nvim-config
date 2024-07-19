return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = {
        "clangd",
      }
      opts.ui = {
        border = "rounded",
      }
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  { "neovim/nvim-lspconfig" },
}
