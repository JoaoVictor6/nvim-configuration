-- No Nvim 0.11+ com nvim-treesitter na branch main, não usamos mais .configs.setup()
pcall(function()
  -- Habilita o highlight do treesitter via autocmd conforme recomendação oficial
  vim.api.nvim_create_autocmd('FileType', {
    pattern = { '*' },
    callback = function()
      pcall(vim.treesitter.start)
    end,
  })

  -- Garante a instalação dos parsers desejados
  local ts = require('nvim-treesitter')
  ts.setup({
    install_dir = vim.fn.stdpath('data') .. '/site'
  })
  
  -- Instala assincronamente os parsers úteis (o :wait() bloquearia a UI se demorasse)
  ts.install({ "javascript", "typescript", "html", "css", "json", "tsx" })
end)
