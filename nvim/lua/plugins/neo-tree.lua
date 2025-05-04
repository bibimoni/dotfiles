return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,

  opts = {
    sources = { "filesystem", "buffers", "git_status" },
    filesystem = {
      follow_current_file = { enabled = true }, -- reveal file in tree
    },
    window = {
      position = "left", -- ensure it opens on the left
      mappings = {
        ["<CR>"] = "open",
        ["o"] = "open",
        ["<C-S-v>"] = "open_vsplit", -- Ctrl+Shift+V for vsplit
        ["<C-x>"] = "open_split",    -- Ctrl+x for horizontal split
        ["<C-t>"] = "open_tabnew",   -- new tab
        ["a"] = "add",
        ["d"] = "delete",
        ["r"] = "rename",
        ["y"] = "copy_to_clipboard",
        ["x"] = "cut_to_clipboard",
        ["p"] = "paste_from_clipboard",
        ["q"] = "close_window",
        ["?"] = "show_help",
        ["H"] = "toggle_hidden",
      },
    },
  },

  config = function(_, opts)
    require("neo-tree").setup(opts)

    -- Global toggle mapping: <leader>e
    vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", {
      noremap = true,
      silent = true,
      desc = "Toggle Neo-tree",
    })
  end,
}
