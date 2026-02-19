require("core.options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Otomatis load semua file di lua/plugins/
require("lazy").setup("plugins", {
  rocks = {
    enabled = false, -- Matikan dukungan luarocks agar tidak error
  },
})

require("core.keymaps")
