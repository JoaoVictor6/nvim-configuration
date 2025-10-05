-- PRSISTENCE
local config_path = vim.fn.stdpath("config")
local theme_file = config_path .. "/theme.log"
local function read_theme()
  local file = io.open(theme_file, "r")
  if not file then
    return "gruvbox" -- valor padrão inicial
  end
  local theme = file:read("*l")
  file:close()
  return theme or "gruvbox"
end
local function write_theme(theme)
  local file = io.open(theme_file, "w")
  if file then
    file:write(theme)
    file:close()
  end
end
local function apply_saved_theme()
  local theme = read_theme()
  if theme == "catppuccin-latte" then
    vim.o.background = "light"
    vim.cmd("colorscheme catppuccin-latte")
  else
    vim.o.background = "dark"
    vim.cmd("colorscheme gruvbox")
  end
end

apply_saved_theme()
---

local function switch_theme()
  local current_theme = vim.g.colors_name

  if current_theme == "gruvbox" then
    vim.o.background = "light"
    write_theme("catppuccin-latte")
    vim.cmd([[colorscheme catppuccin-latte]])
    print("☀️ Tema trocado para Catppuccin Latte (light)")
  else
    -- Troca para o tema escuro
    vim.o.background = "dark"
    write_theme("gruvbox")
    vim.cmd([[colorscheme gruvbox]])
    print("🌙 Tema trocado para Gruvbox (dark)")
  end
end

vim.api.nvim_create_user_command("SwitchTheme", switch_theme, {})
