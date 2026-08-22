pcall(function()
  require('nvim-treesitter.configs').setup({ highlight = { enable = true }, ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "typescript", "html", "css" } })
end)
