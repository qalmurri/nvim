return {
  {
    'echasnovski/mini.map',
    config = function()
      local map = require('mini.map')
      map.setup({
        integrations = { map.gen_integration.gitsigns(), map.gen_integration.diagnostic() },
        window = { width = 15 },
      })
      vim.keymap.set('n', '<leader>mm', map.toggle, { desc = "Toggle Minimap" })
    end,
  }
}
