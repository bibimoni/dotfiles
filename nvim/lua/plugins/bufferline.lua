return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  opts = {
    options = {
      numbers = "ordinal",
      close_command = "bdelete! %d",
      right_mouse_command = "bdelete! %d",
      indicator = { style = "icon", icon = "▎" },
      buffer_close_icon = "",
      modified_icon = "●",
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",
      max_name_length = 18,
      max_prefix_length = 15,
      tab_size = 18,
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = false,
      enforce_regular_tabs = false,
      view = "multiwindow",
      separator_style = "thin",
      always_show_bufferline = true,
      diagnostics = "nvim_lsp",
      offsets = {
        {
          filetype = "neo-tree",
          text = "Explorer",
          highlight = "Directory",
          text_align = "left",
          padding = 1,
        },
      },
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)

    vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {
      desc = "Next buffer",
      noremap = true,
      silent = true,
    })
    vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {
      desc = "Previous buffer",
      noremap = true,
      silent = true,
    })
    vim.keymap.set("n", "<leader>x", "<Cmd>BufferLinePickClose<CR>", {
      desc = "Pick buffer to close",
      noremap = true,
      silent = true,
    })
  end,
}
