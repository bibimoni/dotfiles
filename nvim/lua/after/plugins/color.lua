function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
end

require("catppuccin").setup({
  flavour = "latte",
  background = {
    light = "latte",
    dark = "mocha",
  },
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    treesitter = true,
    neotree = true,
    webdevicons = true,
  },
  auto_integrations = true,
})

-- Set Catppuccin as the colorscheme
vim.cmd.colorscheme("tokyonight-night")
-- vim.cmd.colorschem = 'vim-colors-xcode'
require 'nvim-web-devicons'.setup {
  -- your personnal icons can go here (to override)
  -- you can specify color or cterm_color instead of specifying both of them
  -- DevIcon will be appended to `name`
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  },
  -- globally enable different highlight colors per icon (default to true)
  -- if set to false all icons will have the default icon's color
  color_icons = true,
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true,
}
-- ColorMyPencils()

-- vim.api.nvim_create_autocmd("ColorScheme", {
--   pattern = "*",
--   callback = function() ColorMyPencils() end,
-- })
