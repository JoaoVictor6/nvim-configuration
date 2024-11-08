
-- colorschem
local ok, _ = pcall(vim.cmd, 'colorscheme gotham256')
if not ok then
  vim.cmd 'colorscheme gotham356' 
end

-- vim.cmd 'colorscheme catppuccin-latte'

