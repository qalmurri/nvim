return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "python",
          "lua",
          "vim",
          "vimdoc",
          "go",
          "cpp",
          "bash",
        },

        highlight = {
          enable = true,
        },

        indent = {
          enable = true,
        },
      })
    end,
  },
}

-- bawaan v0.1
-- return {
--   {
--     "nvim-treesitter/nvim-treesitter",
--     build = ":TSUpdate",
--     event = { "BufReadPost", "BufNewFile" }, -- Load hanya saat buka file agar startup cepat
--     config = function()
--       local status, treesitter = pcall(require, "nvim-treesitter.configs")
--       if not status then
--         treesitter = require("nvim-treesitter")
--       end
-- 
--       treesitter.setup({
--         ensure_installed = { "python", "lua", "vim", "vimdoc", "go", "cpp", "bash" },
--         auto_install = true,
--         highlight = {
--           enable = true, -- Aktifkan highlight warna-warni
--           additional_vim_regex_highlighting = false,
--         },
--         indent = { enable = true }, -- Indentasi otomatis yang lebih pintar
--       })
--     end
--   },
-- }
