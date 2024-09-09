local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- barbar config! https://github.com/romgrk/barbar.nvim
map('n', '<A-Tab>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-S-Tab>', '<Cmd>BufferPrevious<CR>', opts)


-- nvim tree!
map('n', '<C-b>', '<Cmd>NvimTreeToggle<CR>', opts)
