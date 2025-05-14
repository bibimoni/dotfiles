local function window()
  return vim.api.nvim_win_get_number(0)
end
local function lspsaga_winbar()
  local ok, bar = pcall(require('lspsaga.symbol.winbar').get_bar)
  if ok and bar ~= nil then
    return bar
  end
  return ''
end

return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("lualine").setup({
      options = {
        theme = "seoul256",
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = {
          {
            'filename',
            path = 1,
          },
          {
            'lsp_status',
            icon = '',
            symbols = {
              spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' },
              done = '✓',
              separator = ' ',
            },
          },
        },
        lualine_x = {
          "encoding",
          {
            'fileformat',
            symbols = {
              unix = '', -- e712
              dos = '', -- e70f
              mac = '', -- e711
            }
          },
          {
            "filetype",
            colored = true,
            icon_only = true,
            icon = { align = 'right' }
          }
        },
        lualine_y = { "progress" },
        lualine_z = { "location", window },
      },
    })
  end,
}
