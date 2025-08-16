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
  },
})

-- Set Catppuccin as the colorscheme
vim.cmd.colorscheme "catppuccin"

-- ColorMyPencils()

-- vim.api.nvim_create_autocmd("ColorScheme", {
--   pattern = "*",
--   callback = function() ColorMyPencils() end,
-- })
