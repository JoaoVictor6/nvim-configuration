local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- barbar config! https://github.com/romgrk/barbar.nvim
map('n', '<leader>bn', '<Cmd>BufferNext<CR>', opts)
map('n', '<leader>bb', '<Cmd>BufferPrevious<CR>', opts)


-- nvim tree!
map('n', '<C-b>', '<Cmd>NvimTreeToggle<CR>', opts)

-- git blame
map('n', '<leader>gl', '<Cmd>Gitsigns blame_line<CR>', opts)

--- FOLDS
--- É basicamente aquele comportamento de minimizar escopos de codigo
--- atalhos padrão
--- zR open all folds
--- zM close all open folds
--- za toggles the fold at the cursor
