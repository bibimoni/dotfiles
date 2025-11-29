-- plugins/lualine.lua  ── adjust path for your setup
return {
  "nvim-lualine/lualine.nvim",
  lazy = false,                                       -- load immediately
  dependencies = { "DaikyXendo/nvim-material-icon" }, -- optional icons
  config = function()
    require("lualine").setup({
      options = {
        theme                = "auto", -- picks up current colorscheme
        globalstatus         = true,   -- single bar for all splits (0.7+)
        icons_enabled        = true,
        component_separators = "",     -- no vertical bars
        section_separators   = "",     -- no ▮▯ arrows
        disabled_filetypes   = { "NvimTree", "neo-tree" },
      },

      sections = {
        lualine_a = { { "mode", upper = true } },        -- NORMAL / INSERT …
        lualine_b = { "branch", "diff", "diagnostics" }, -- git & LSP info
        lualine_c = { "filename" },                      -- current file
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },                      -- % through file
        lualine_z = { "location" },                      -- 7:42 col 5
      },

      inactive_sections = { -- splits not focused
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
    })
  end
}

-- local function window()
--   return vim.api.nvim_win_get_number(0)
-- end
-- local function lspsaga_winbar()
--   local ok, bar = pcall(require('lspsaga.symbol.winbar').get_bar)
--   if ok and bar ~= nil then
--     return bar
--   end
--   return ''
-- end
--
-- return {
--   "nvim-lualine/lualine.nvim",
--   dependencies = { "nvim-tree/nvim-web-devicons" },
--   event = "VeryLazy",
--   config = function()
--     require("lualine").setup({
--       options = {
--         -- theme = "seoul256",
--         theme = "OceanicNext",
--         component_separators = { left = '', right = '' },
--         section_separators = { left = '', right = '' },
--         globalstatus = true,
--       },
--       sections = {
--         lualine_a = { "mode" },
--         lualine_b = { "branch", "diff", "diagnostics" },
--         lualine_c = {
--           {
--             'filename',
--             path = 1,
--           },
--           {
--             'lsp_status',
--             icon = '',
--             symbols = {
--               spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' },
--               done = '✓',
--               separator = ' ',
--             },
--           },
--         },
--         lualine_x = {
--           "encoding",
--           {
--             'fileformat',
--             symbols = {
--               unix = '', -- e712
--               dos = '', -- e70f
--               mac = '', -- e711
--             }
--           },
--           {
--             "filetype",
--             colored = true,
--             icon_only = true,
--             icon = { align = 'right' }
--           }
--         },
--         lualine_y = { "progress" },
--         lualine_z = { "location", window },
--       },
--     })
--   end,
-- }
