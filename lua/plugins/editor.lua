return {
  -- File Explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
    opts = { filesystem = { use_libuv_file_watcher = true, follow_current_file = { enabled = true } } }
  },
  -- Fuzzy Finder
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }, opts = {} },
  -- Syntax Highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" }, -- Load hanya saat buka file agar startup cepat
    config = function()
      -- Gunakan pcall (protected call) agar jika gagal tidak membuat nvim stuck
      local status, treesitter = pcall(require, "nvim-treesitter.configs")
      
      -- Jika 'nvim-treesitter.configs' tidak ditemukan, coba load modul utama
      if not status then
        treesitter = require("nvim-treesitter")
      end

      treesitter.setup({
        -- List bahasa yang mau diinstall otomatis
        ensure_installed = { "python", "lua", "vim", "vimdoc", "go", "cpp", "bash" },
        
        -- Install bahasa yang belum ada secara otomatis saat buka file
        auto_install = true,
        
        highlight = {
          enable = true, -- Aktifkan highlight warna-warni
          additional_vim_regex_highlighting = false,
        },
        indent = { enable = true }, -- Indentasi otomatis yang lebih pintar
      })
    end
  },
  -- Utils
  { "windwp/nvim-autopairs", event = "InsertEnter", opts = { check_ts = true } },
  { "RRethy/vim-illuminate", event = "BufReadPost" },
}
