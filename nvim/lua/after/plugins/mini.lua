require('mini.indentscope').setup()
-- require('mini.animate').setup()
require('mini.sessions').setup()
require('mini.ai').setup()
local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    -- Leader triggers
    { mode = 'n', keys = '<Leader>' },
    { mode = 'x', keys = '<Leader>' },

    -- Built-in completion
    { mode = 'i', keys = '<C-x>' },

    -- `g` key
    { mode = 'n', keys = 'g' },
    { mode = 'x', keys = 'g' },

    -- Marks
    { mode = 'n', keys = "'" },
    { mode = 'n', keys = '`' },
    { mode = 'x', keys = "'" },
    { mode = 'x', keys = '`' },

    -- Registers
    { mode = 'n', keys = '"' },
    { mode = 'x', keys = '"' },
    { mode = 'i', keys = '<C-r>' },
    { mode = 'c', keys = '<C-r>' },

    -- Window commands
    { mode = 'n', keys = '<C-w>' },

    -- `z` key
    { mode = 'n', keys = 'z' },
    { mode = 'x', keys = 'z' },
  },

  clues = {
    -- Enhance this by adding descriptions for <Leader> mapping groups
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.z(),
  },
})


-- after/plugins/mini.lua
--
-- local status_ok, mini_icons = pcall(require, "mini.icons")
-- if not status_ok then
--   return
-- end

-- ============================================================
-- 1. PALETTE DEFINITION (VS Code / Material Theme Colors)
-- ============================================================
-- We define specific highlight groups to match the VS Code look.
-- local function set_hl(name, fg)
--   vim.api.nvim_set_hl(0, name, { fg = fg })
-- end
--
-- -- Yellows
-- set_hl('IconYellow', '#f1e05a')   -- JS, Python
-- set_hl('IconLightYel', '#cbcb41') -- JSON
--
-- -- Blues
-- set_hl('IconBlue', '#519aba')     -- TS, CSS, Go, Dart
-- set_hl('IconDarkBlue', '#237986') -- VS Code Dark Blue
-- set_hl('IconCyan', '#61afef')     -- React, Golang
-- set_hl('IconSky', '#98c379')      -- Tailwind
--
-- -- Reds/Oranges
-- set_hl('IconRed', '#e06c75')    -- Java, Ruby, Git
-- set_hl('IconOrange', '#e5c07b') -- HTML, Swift
-- set_hl('IconPeach', '#d19a66')  -- Rust
--
-- -- Purples/Pinks
-- set_hl('IconPurple', '#c678dd') -- PHP, C#, Kotlin
-- set_hl('IconPink', '#f06292')   -- Sass
--
-- -- Greens/Teals
-- set_hl('IconGreen', '#98c379') -- Node, Vim
-- set_hl('IconTeal', '#56b6c2')  -- Docker
--
-- -- Grays
-- set_hl('IconGray', '#abb2bf') -- Configs
-- set_hl('IconDark', '#5c6370') -- Ignored files
--
--
-- -- ============================================================
-- -- 2. ICON MAPPING
-- -- ============================================================
-- mini_icons.setup({
--   style = 'glyph',
--
--   -- EXTENSIONS: Covers file endings (e.g., main.go, style.css)
--   extension = {
--     -- Web & JavaScript
--     js     = { glyph = "", hl = "IconYellow" },
--     mjs    = { glyph = "", hl = "IconYellow" },
--     cjs    = { glyph = "", hl = "IconYellow" },
--     ts     = { glyph = "", hl = "IconBlue" },
--     mts    = { glyph = "", hl = "IconBlue" },
--     jsx    = { glyph = "", hl = "IconCyan" },
--     tsx    = { glyph = "", hl = "IconCyan" },
--     vue    = { glyph = "", hl = "IconGreen" },
--     svelte = { glyph = "", hl = "IconOrange" },
--
--     -- Styles
--     css    = { glyph = "", hl = "IconBlue" },
--     scss   = { glyph = "", hl = "IconPink" },
--     sass   = { glyph = "", hl = "IconPink" },
--     less   = { glyph = "", hl = "IconDarkBlue" },
--     styl   = { glyph = "", hl = "IconGreen" },
--
--     -- Web Structure
--     html   = { glyph = "", hl = "IconOrange" },
--     htm    = { glyph = "", hl = "IconOrange" },
--     xml    = { glyph = "󰗀", hl = "IconOrange" },
--
--     -- Backend / Systems
--     go     = { glyph = "󰟓", hl = "IconCyan" },
--     rs     = { glyph = "", hl = "IconPeach" }, -- Rust
--     java   = { glyph = "", hl = "IconRed" },
--     jar    = { glyph = "", hl = "IconRed" },
--     c      = { glyph = "", hl = "IconBlue" },
--     h      = { glyph = "", hl = "IconPurple" },
--     cpp    = { glyph = "", hl = "IconBlue" },
--     hpp    = { glyph = "", hl = "IconPurple" },
--     cs     = { glyph = "󰌛", hl = "IconPurple" }, -- C#
--     php    = { glyph = "", hl = "IconPurple" },
--     rb     = { glyph = "", hl = "IconRed" }, -- Ruby
--
--     -- Python
--     py     = { glyph = "", hl = "IconYellow" },
--     pyc    = { glyph = "", hl = "IconYellow" },
--     whl    = { glyph = "", hl = "IconYellow" },
--
--     -- Mobile
--     swift  = { glyph = "", hl = "IconOrange" },
--     kt     = { glyph = "", hl = "IconPurple" }, -- Kotlin
--     dart   = { glyph = "", hl = "IconBlue" }, -- Flutter/Dart
--
--     -- Scripting / Config
--     lua    = { glyph = "", hl = "IconBlue" },
--     sh     = { glyph = "", hl = "IconGray" },
--     zsh    = { glyph = "", hl = "IconGray" },
--     fish   = { glyph = "", hl = "IconGray" },
--     json   = { glyph = "", hl = "IconLightYel" },
--     yaml   = { glyph = "", hl = "IconPurple" },
--     yml    = { glyph = "", hl = "IconPurple" },
--     toml   = { glyph = "", hl = "IconPurple" },
--     conf   = { glyph = "", hl = "IconGray" },
--     ini    = { glyph = "", hl = "IconGray" },
--
--     -- Databases
--     sql    = { glyph = "", hl = "IconBlue" },
--     db     = { glyph = "", hl = "IconBlue" },
--     prisma = { glyph = "", hl = "IconDarkBlue" }, -- Prisma ORM
--
--     -- Documents
--     md     = { glyph = "", hl = "IconGray" },
--     txt    = { glyph = "", hl = "IconGray" },
--     log    = { glyph = "", hl = "IconGray" },
--
--     -- Archives
--     zip    = { glyph = "", hl = "IconYellow" },
--     tar    = { glyph = "", hl = "IconYellow" },
--     gz     = { glyph = "", hl = "IconYellow" },
--     rar    = { glyph = "", hl = "IconYellow" },
--   },
--
--   -- FILES: Covers exact filenames (e.g., Dockerfile)
--   file = {
--     -- Build & Package Managers
--     ["package.json"]       = { glyph = "", hl = "IconRed" }, -- NPM Red
--     ["package-lock.json"]  = { glyph = "", hl = "IconGray" },
--     ["yarn.lock"]          = { glyph = "", hl = "IconBlue" },
--     ["tsconfig.json"]      = { glyph = "", hl = "IconBlue" },
--     ["go.mod"]             = { glyph = "󰟓", hl = "IconCyan" },
--     ["go.sum"]             = { glyph = "󰟓", hl = "IconRed" },
--     ["cargo.toml"]         = { glyph = "", hl = "IconPeach" },
--     ["gemfile"]            = { glyph = "", hl = "IconRed" },
--     ["makefile"]           = { glyph = "", hl = "IconGray" },
--     ["cmakelists.txt"]     = { glyph = "", hl = "IconGray" },
--
--     -- DevOps & Tools
--     ["dockerfile"]         = { glyph = "", hl = "IconTeal" },
--     ["docker-compose.yml"] = { glyph = "", hl = "IconTeal" },
--     [".dockerignore"]      = { glyph = "", hl = "IconDark" },
--     [".gitignore"]         = { glyph = "", hl = "IconRed" },
--     [".gitmodules"]        = { glyph = "", hl = "IconRed" },
--     [".env"]               = { glyph = "", hl = "IconYellow" },
--     [".env.example"]       = { glyph = "", hl = "IconGray" },
--     ["license"]            = { glyph = "", hl = "IconYellow" },
--     ["readme.md"]          = { glyph = "", hl = "IconYellow" },
--
--     -- System
--     [".ds_store"]          = { glyph = "", hl = "IconDark" },
--   },
-- })
--
-- -- ============================================================
-- -- 3. MOCK & FOLDER OVERRIDES
-- -- ============================================================
-- -- This mocks nvim-web-devicons so Neo-tree/Lualine use these icons
-- mini_icons.mock_nvim_web_devicons()
