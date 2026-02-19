return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright", "lua_ls", "gopls" },
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup({
              capabilities = require('cmp_nvim_lsp').default_capabilities(),
            })
          end,
        },
      })
    end,
  },
}
