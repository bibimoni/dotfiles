vim.g.mapleader = " "
vim.g.maplocalleader = '\\'
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("n", "x", "\"_x");
vim.keymap.set("i", "<C-Enter>", "copilot#Accept('<CR>')", { silent = true, expr = true })
vim.keymap.set("n", "Y", "yg$")

-- vim.keymap.set("n", "<C-d>",
--   '<Cmd>lua vim.cmd("normal! <C-d>"); ' ..
--   'MiniAnimate.execute_after("scroll", "normal! zvzz")<CR>'
--   , { noremap = true })
--
-- vim.keymap.set("n", "<C-u>",
--   '<Cmd>lua vim.cmd("normal! <C-u>"); ' ..
--   'MiniAnimate.execute_after("scroll", "normal! zvzz")<CR>'
--   , { noremap = true })
--
-- vim.keymap.set("n", "n",
--   '<Cmd>lua vim.cmd("normal! n"); ' ..
--   'MiniAnimate.execute_after("scroll", "normal! zvzz")<CR>'
--   , { noremap = true })
--
-- vim.keymap.set("n", "N",
--   '<Cmd>lua vim.cmd("normal! N"); ' ..
--   'MiniAnimate.execute_after("scroll", "normal! zvzz")<CR>'
--   , { noremap = true })

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("i", "<A-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-j>", "<Down>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-k>", "<Up>", { noremap = true, silent = true })
vim.keymap.set("i", "<A-l>", "<Right>", { noremap = true, silent = true })

vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true })

vim.keymap.set("t", "<C-x>", [[<C-\><C-n>]], { noremap = true })
vim.keymap.set("t", "jk", [[<C-\><C-n>]], { noremap = true })
vim.keymap.set('t', '<A-h>', [[<Cmd>wincmd h<CR>]], { noremap = true })
vim.keymap.set('t', '<A-j>', [[<Cmd>wincmd j<CR>]], { noremap = true })
vim.keymap.set('t', '<A-k>', [[<Cmd>wincmd k<CR>]], { noremap = true })
vim.keymap.set('t', '<A-l>', [[<Cmd>wincmd l<CR>]], { noremap = true })
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], { noremap = true })

vim.keymap.set("n", "<leader>v", vim.cmd.vsplit, { silent = true });
vim.keymap.set("n", "<leader>h", vim.cmd.split, { silent = true });

vim.keymap.set("n", "<C-c>", "<Cmd>%y+<CR>");

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float);
vim.keymap.set("n", "<C-s>", function()
  require("telescope.builtin").spell_suggest(require("telescope.themes").get_cursor({
    previewer = false,
    layout_config = {
      width = 50,
      height = 15,
    }
  })
  )
end, { remap = true })

vim.cmd [[
  augroup _general_settings
    autocmd!
    autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR>
    autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200})
    autocmd BufWinEnter * :set formatoptions-=cro
    autocmd FileType qf set nobuflisted
  augroup end

  augroup _git
    autocmd!
    autocmd FileType gitcommit setlocal wrap
    autocmd FileType gitcommit setlocal spell
  augroup end

  augroup _markdown
    autocmd!
    autocmd FileType markdown setlocal wrap
    autocmd FileType markdown setlocal spell
  augroup end

  augroup _latex
    autocmd!
    autocmd FileType tex setlocal wrap
    autocmd FileType tex setlocal spell
  augroup end

  augroup _auto_resize
    autocmd!
    autocmd VimResized * tabdo wincmd =
  augroup end

  augroup _alpha
    autocmd!
    autocmd User AlphaReady set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end
]]

-- vim.cmd [[
--   " VimTeX highlight groups
--   hi texCmd guifg=#ad3da4 guibg=NONE gui=NONE ctermfg=127 ctermbg=NONE cterm=NONE
--   hi! link texMathEnvArgName texEnvArgName
--   hi! link texMathZone LocalIdent
--   hi! link texMathZoneEnv texMathZone
--   hi! link texMathZoneEnvStarred texMathZone
--   hi! link texMathZoneX texMathZone
--   hi! link texMathZoneXX texMathZone
--   hi! link texMathZoneEnsured texMathZone
--
--   " Small tweaks
--   hi! link QuickFixLine Normal
--   hi! link qfLineNr Normal
--   hi! link EndOfBuffer LineNr
--   hi! link Conceal LocalIdent
-- ]]
