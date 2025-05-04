function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
  local groups = {
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineBackgroundVisible",
    "BufferLineBackgroundSelected",
    "BufferLineBuffer",
    "BufferLineBufferVisible",
    "BufferLineBufferSelected",
    "BufferLineSeparator",
    "BufferLineSeparatorVisible",
    "BufferLineSeparatorSelected",
    "BufferLineIndicatorSelected",
    "BufferLineIndicatorVisible",
    "BufferLineTabClose",
    "BufferLineDevIconDefault",
  }
  for _, grp in ipairs(groups) do
    vim.api.nvim_set_hl(0, grp, { bg = "none" })
  end
end

ColorMyPencils()

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function() ColorMyPencils() end,
})
