return {
  -- Theme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme tokyonight-night]])
    end,
  },
  -- Icons & UI
  { "nvim-tree/nvim-web-devicons", lazy = true },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { "sphamba/smear-cursor.nvim", event = "VeryLazy", opts = { stiffness = 0.8 } },
  { "vyfor/cord.nvim", build = ":Cord update", opts = {} },
}
