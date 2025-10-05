
local function switch_theme()
  local current_theme = vim.g.colors_name

  if current_theme == "gruvbox" then
    vim.o.background = "light"
    vim.cmd([[colorscheme catppuccin-latte]])
    print("☀️ Tema trocado para Catppuccin Latte (light)")
  else
    -- Troca para o tema escuro
    vim.o.background = "dark"
    vim.cmd([[colorscheme gruvbox]])
    print("🌙 Tema trocado para Gruvbox (dark)")
  end
end

vim.api.nvim_create_user_command("SwitchTheme", switch_theme, {})
