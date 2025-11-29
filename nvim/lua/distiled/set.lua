vim.opt.guicursor = {
  "n-v-c-sm:block", -- block in Normal, Visual, Cmd, Showmatch
  "i-ci-ve:ver25",  -- vertical bar (25% width) in Insert & Cmd‑line insert
  "r-cr-o:hor20",   -- horizontal bar (20% height) in Replace & Operator‑pending
}

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.wrap = false
vim.opt.backup = false
vim.opt.swapfile = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.cmdheight = 1

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.g.mousescroll = "ver:1,hor:2"

vim.opt.rtp:append("/opt/homebrew/opt/fzf")
vim.cmd("au BufRead,BufNewFile *.g set filetype=antlr3")
vim.cmd("au BufRead,BufNewFile *.g4 set filetype=antlr4")

-- PDF Viewer:
-- http://manpages.ubuntu.com/manpages/trusty/man5/zathurarc.5.html
vim.g['vimtex_view_method'] = 'skim'
vim.g['vimtex_quickfix_mode'] = 0

-- Ignore mappings
vim.g['vimtex_mappings_enabled'] = 1

-- Auto Indent
vim.g['vimtex_indent_enabled'] = 1

-- Syntax highlighting
vim.g['vimtex_syntax_enabled'] = 1

-- Error suppression:
-- https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt

vim.g['vimtex_log_ignore'] = ({
  'Underfull',
  'Overfull',
  'specifier changed to',
  'Token not allowed in a PDF string',
})

vim.g['vimtex_context_pdf_viewer'] = 'skim'
vim.g.vimtex_compiler_latexmk = { engine = 'lualatex' }
-- vim.g['vimtex_complete_enabled'] = 1
-- vim.g['vimtex_compiler_progname'] = 'nvr'
-- vim.g['vimtex_complete_close_braces'] = 1
