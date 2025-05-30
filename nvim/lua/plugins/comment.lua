return {
  "numToStr/Comment.nvim",
  lazy = false,
  config = function()
    require("Comment").setup()

    -- Toggle comment for current line (normal mode)
    vim.keymap.set("n", "<leader>/", function()
      require("Comment.api").toggle.linewise.current()
    end, { desc = "Toggle comment" })

    -- Toggle comment for selected lines (visual mode)
    vim.keymap.set("v", "<leader>/", function()
      local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
      vim.api.nvim_feedkeys(esc, "nx", false)
      require("Comment.api").toggle.linewise(vim.fn.visualmode())
    end, { desc = "Toggle comment (visual)" })
  end,
}
