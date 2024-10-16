local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- barbar config! https://github.com/romgrk/barbar.nvim
map('n', '<leader>bn', '<Cmd>BufferNext<CR>', opts)
map('n', '<leader>bb', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<leader>bx', '<Cmd>BufferClose<CR>', opts)


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


--- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})


--- Rename
vim.keymap.set("n", "<leader>rn", ":IncRename ")
