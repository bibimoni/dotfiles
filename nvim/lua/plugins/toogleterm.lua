return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal

    local term_h = Terminal:new({ direction = "horizontal", hidden = true })
    local term_v = Terminal:new({ direction = "vertical", hidden = true })
    local term_f = Terminal:new({ direction = "float", hidden = true })

    require("toggleterm").setup({
      direction = "float",
      shade_terminals = true,
      start_in_insert = true,
    })

    vim.keymap.set("n", "<M-1>", function() term_h:toggle() end, { desc = "Toggle horizontal terminal" })
    vim.keymap.set("n", "<M-2>", function() term_v:toggle() end, { desc = "Toggle vertical terminal" })
    vim.keymap.set("n", "<M-3>", function() term_f:toggle() end, { desc = "Toggle floating terminal" })
  end,
}
