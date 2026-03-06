return {
  -- Fuzzy Finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
  -- Utils
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = { check_ts = true } },
  { "RRethy/vim-illuminate", event = "BufReadPost" },
}
