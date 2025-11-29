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

    -- Latex
    { "lervag/vimtex" },     -- essential for LaTeX; Vimscript
    { "kdheepak/cmp-latex-symbols" },
    { "jbyuki/nabla.nvim" }, -- show symbols in editor

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
    { 'arzg/vim-colors-xcode' },
    { "morhetz/gruvbox" },
    { "ellisonleao/gruvbox.nvim" },
    { "sainnhe/gruvbox-material" },
    { "folke/tokyonight.nvim" },
    { "navarasu/onedark.nvim" },
    {
      "catppuccin/nvim",
      name = "catppuccin"
    },
    { "shaunsingh/moonlight.nvim" },
    { "rebelot/kanagawa.nvim" },
    { "EdenEast/nightfox.nvim" },
    { "sainnhe/everforest" },
    { "junegunn/seoul256.vim" },
    { "ku1ik/vim-monokai" },
    { 'projekt0n/github-nvim-theme', name = 'github-theme' },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  -- checker = { enabled = true },
})

-- package.preload["nvim-web-devicons"] = function()
--   require("mini.icons").mock_nvim_web_devicons()
--   require("nvim-web-devicons").setup({
--     default = true,
--     override = {
--       ["js"] = { icon = "", color = "#ebcb8b", name = "js" },
--       ["ts"] = { icon = "", color = "#519aba", name = "ts" },
--       ["jsx"] = { icon = "", color = "#519aba", name = "jsx" },
--       ["tsx"] = { icon = "", color = "#135564", name = "tsx" },
--
--       -- CSS / Styling
--       ["css"] = { icon = "", color = "#519aba", name = "css" },
--       ["scss"] = { icon = "", color = "#ea6962", name = "scss" },
--       ["html"] = { icon = "", color = "#e06c75", name = "html" },
--
--       -- Backend / Config
--       ["json"] = { icon = "", color = "#ebcb8b", name = "json" },
--       ["lua"] = { icon = "", color = "#51a0cf", name = "lua" },
--       ["go"] = { icon = "", color = "#519aba", name = "go" },
--       ["py"] = { icon = "", color = "#ffbc2b", name = "py" },
--
--       ["Dockerfile"] = { icon = "", color = "#458588", name = "Dockerfile" },
--       ["docker-compose.yml"] = { icon = "", color = "#458588", name = "Dockerfile" },
--
--       [".gitignore"] = { icon = "", color = "#f44747", name = "GitIgnore" },
--     }
--   })
--
--   require("neo-tree").setup({
--     default_component_configs = {
--       icon = {
--         folder_closed = "", -- The "Solid" folder icon (looks more like VS Code)
--         folder_open = "",
--         folder_empty = "",
--         default = "",
--       },
--       name = {
--         highlight_opened_files = true, -- Highlight open files with the icon color
--       }
--     }
--   })
--   return package.loaded["nvim-web-devicons"]
-- end

require("after.plugins.surround")
require("after.plugins.lsp")
require("after.plugins.nvim-cmp")
require("after.plugins.tex")
-- require("after.plugins.presence")
require("after.plugins.mini")
require("after.plugins.undotree")
require("after.plugins.telescope-filebrowser");
require("after.plugins.luasnip")
require("after.plugins.lspsaga")
require("after.plugins.scroll")
require("after.plugins.color")
require("after.plugins.virt-column")
