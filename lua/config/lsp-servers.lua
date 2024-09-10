require("mason").setup()
require("mason-lspconfig").setup()
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').ts_ls.setup({})

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'}
  },
  completion = {
    autocomplete = {
      require('cmp.types').cmp.TriggerEvent.InsertEnter,
      require('cmp.types').cmp.TriggerEvent.TextChanged
    }
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true
    }),
    ['<S-j>'] = cmp.mapping.scroll_docs(4),
    ['<S-k>'] = cmp.mapping.scroll_docs(-4),
  },
})
