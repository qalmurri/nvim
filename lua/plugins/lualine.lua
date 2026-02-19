-- Fungsi untuk mengambil nama LSP yang sedang aktif
local function lsp_status()
  local msg = 'No LSP'
  local buf_ft = vim.api.nvim_get_current_buf()
  local clients = vim.lsp.get_clients({ bufnr = buf_ft })
  if next(clients) == nil then return msg end
  
  local client_names = {}
  for _, client in ipairs(clients) do
    table.insert(client_names, client.name)
  end
  return "[" .. table.concat(client_names, ", ") .. "]"
end

return {
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        options = {
          theme = "tokyonight",
          globalstatus = true,
          section_separators = '',
          component_separators = '|',
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'filename' },
          lualine_c = { 'diagnostics' },
          -- Taruh LSP Status di sini (lualine_x)
          lualine_x = { lsp_status, 'filetype' }, 
          lualine_y = { 'progress' },
          lualine_z = { 'location' },
        },
      })
    end,
  },
}
