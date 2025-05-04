-- Booststrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
    { 'VonHeikemen/lsp-zero.nvim' },

    { 'neovim/nvim-lspconfig' },
    {
      'williamboman/mason.nvim',
      cmd = "Mason",
      config = function() require("mason").setup() end,
    },
    { 'williamboman/mason-lspconfig.nvim' },

    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-nvim-lua' },
    { 'saadparwaiz1/cmp_luasnip' },

    { 'L3MON4D3/LuaSnip' },
    { 'rafamadriz/friendly-snippets' },

    -- color schemes
    { "morhetz/gruvbox" },
    { "ellisonleao/gruvbox.nvim" },
    { "folke/tokyonight.nvim" },
    { "navarasu/onedark.nvim" },
    {
      "catppuccin/nvim",
      name = "catppuccin"
    },
    { "shaunsingh/moonlight.nvim" },
    { "rebelot/kanagawa.nvim" },
    { "EdenEast/nightfox.nvim" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

require("after.plugins.lsp")
require("after.plugins.nvim-cmp")
require("after.plugins.presence")
