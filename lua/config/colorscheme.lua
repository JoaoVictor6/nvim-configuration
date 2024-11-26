
-- colorschem
local ok, _ = pcall(vim.cmd, 'colorscheme gotham256')
if not ok then
  vim.cmd 'colorscheme catppuccin-macchiato' 
end

