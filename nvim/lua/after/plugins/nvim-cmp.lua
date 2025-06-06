local cmp = require('cmp')
require('luasnip.loaders.from_vscode').lazy_load()
require("luasnip.loaders.from_lua").lazy_load()

cmp.setup({
  sources = {
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'nvim_lsp' },
    { name = 'render-markdown' },
    { name = 'buffer' }
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
      -- vim.snippet.expand(args.body)
    end
  },

  mapping = cmp.mapping.preset.insert({
    -- Navigate between completion items
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = 'select' }),

    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({ select = true }),

    -- Ctrl+Space to trigger completion menu
    -- ['<C-b>'] = cmp.mapping.complete(),
    ['<Tab>'] = cmp.mapping(function(fallback)
      local col = vim.fn.col('.') - 1

      if cmp.visible() then
        cmp.select_next_item({ behavior = 'select' })
      elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        fallback()
      else
        cmp.complete()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = 'select' }),
    -- Scroll up and down in the completion documentation
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
  }),
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
})
