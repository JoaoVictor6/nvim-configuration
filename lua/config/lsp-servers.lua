require("mason").setup()
require("mason-lspconfig").setup()
require('lspconfig').ast_grep.setup({})
require('lspconfig').gopls.setup({})
require('lspconfig').rust_analyzer.setup({})
require('lspconfig').ts_ls.setup({})
require('lspconfig').tailwindcss.setup({})
require('lspconfig').eslint.setup({})
require('lspconfig').jsonls.setup({
  filetypes = {"json", "jsonc"},
    settings = {
      json = {
        -- Schemas https://www.schemastore.org
        schemas = {
          {
            fileMatch = {"package.json"},
            url = "https://json.schemastore.org/package.json"
          },
          {
            fileMatch = {"tsconfig*.json"},
            url = "https://json.schemastore.org/tsconfig.json"
          },
          {
            fileMatch = {
              ".prettierrc",
              ".prettierrc.json",
              "prettier.config.json"
            },
            url = "https://json.schemastore.org/prettierrc.json"
          },
          {
            fileMatch = {".eslintrc", ".eslintrc.json"},
            url = "https://json.schemastore.org/eslintrc.json"
          },
          {
            fileMatch = {".babelrc", ".babelrc.json", "babel.config.json"},
            url = "https://json.schemastore.org/babelrc.json"
          },
          {
            fileMatch = {"lerna.json"},
            url = "https://json.schemastore.org/lerna.json"
          },
          {
            fileMatch = {"now.json", "vercel.json"},
            url = "https://json.schemastore.org/now.json"
          },
          {
            fileMatch = {
              ".stylelintrc",
              ".stylelintrc.json",
              "stylelint.config.json"
            },
            url = "http://json.schemastore.org/stylelintrc.json"
          }
        }
      }
    }
})
require('lspconfig').emmet_language_server.setup({
  filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
  -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
  -- **Note:** only the options listed in the table are supported.
  init_options = {
    ---@type table<string, string>
    includeLanguages = {},
    --- @type string[]
    excludeLanguages = {},
    --- @type string[]
    extensionsPath = {},
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
    preferences = {},
    --- @type boolean Defaults to `true`
    showAbbreviationSuggestions = true,
    --- @type "always" | "never" Defaults to `"always"`
    showExpandedAbbreviation = "always",
    --- @type boolean Defaults to `false`
    showSuggestionsAsSnippets = false,
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
    syntaxProfiles = {},
    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
    variables = {},
  },
})

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
    {name = 'buffer'},
    {name = 'emmet_language_server'}
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
