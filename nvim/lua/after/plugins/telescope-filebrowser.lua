local action_state = require "telescope.actions.state"
local actions = require "telescope.actions"

local function paste_file_contents(prompt_bufnr)
  local entry = action_state.get_selected_entry()
  local file_path = entry.path or entry.filename
  local lines = {}
  for line in io.lines(file_path) do
    lines[#lines + 1] = line
  end

  actions.close(prompt_bufnr)

  vim.api.nvim_put(lines, 'l', true, true)
end

require("telescope").setup {
  extensions = {
    file_browser = {
      mappings = {
        ["i"] = {
          ["<CR>"] = paste_file_contents
        },
        ["n"] = {
          ["<CR>"] = paste_file_contents
        },
      },
      hijack_netrw = true,
      cwd = vim.fn.expand("/Users/distiled/codeStuff/templates_new")
    }
  }
}

vim.keymap.set(
  "n",
  "<space>fn",
  function()
    require("telescope").extensions.file_browser.file_browser({
      cwd = vim.fn.expand("/Users/distiled/codeStuff/templates_new"),
      depth = 1,
      hidden = true,
    })
  end
  ,
  { desc = "open file browser" }
)
require("telescope").load_extension "file_browser"
